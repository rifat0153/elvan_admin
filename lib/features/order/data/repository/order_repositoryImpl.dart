import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elvan_admin/core/firebase/firebase_providers.dart';
import 'package:elvan_admin/features/order/domain/repository/order_repository.dart';
import 'package:elvan_shared/core/failure/failure.dart';
import 'package:elvan_shared/core/result/result.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:elvan_shared/shared/constants/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final orderRepositoryProvider = Provider<OrderRepository>((ref) {
  final firestore = ref.watch(firebaseFirestoreProvider);
  return OrderRpositoryImpl(firebaseFirestore: firestore);
});

class OrderRpositoryImpl implements OrderRepository {
  final FirebaseFirestore firebaseFirestore;

  const OrderRpositoryImpl({
    required this.firebaseFirestore,
  });

  @override
  Future<void> changeOrderStatus(
      {required String orderId, required OrderStatus status}) async {
    try {
      await firebaseFirestore
          .collection(Constants.firebaseCollectionOrders)
          .doc(orderId)
          .update({"status": status.status});
    } on FirebaseException catch (e) {
      print(e);
    }
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getDeilveredStreamPagination(
      {required DocumentSnapshot lastOrder}) async {
    final data = await firebaseFirestore
        .collection(Constants.firebaseCollectionOrders)
        .where('status', whereIn: [
          OrderStatus.delivered.status,
          OrderStatus.rejected.status
        ])
        .orderBy('createdAt', descending: true)
        .startAfterDocument(lastOrder)
        .limit(20)
        .get();
    return data;
  }

  @override
  Stream<List<OrderDto>> getOrderStream(
      {required OrderStatus status, required Timestamp timestamp}) {
    return firebaseFirestore
        .collection(Constants.firebaseCollectionOrders)
        .where('status', isEqualTo: status.status)
        .withConverter(
          fromFirestore: (snapshot, _) => OrderDto.fromJson(snapshot.data()!),
          toFirestore: (orderDto, _) => orderDto.toJson(),
        )
        .orderBy('createdAt', descending: true)
        .startAt([timestamp])
        .snapshots()
        .map(
          (event) => event.docs
              .map(
                (e) => e.data(),
              )
              .toList(),
        );
  }
}
