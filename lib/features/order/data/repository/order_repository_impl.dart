import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elvan_admin/core/firebase/firebase_providers.dart';
import 'package:elvan_admin/features/order/domain/repository/order_repository.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:elvan_shared/shared/constants/constants.dart';
import 'package:flutter/foundation.dart';
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
  Future<void> changeOrderStatus({required String orderId, required OrderStatus status}) async {
    await firebaseFirestore
        .collection(
          Constants.firebaseCollectionOrders,
        )
        .doc(orderId)
        .update({"status": status.status});
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getDeilveredStream() async {
    final data = await firebaseFirestore
        .collection(
          Constants.firebaseCollectionOrders,
        )
        .where('status', whereIn: [OrderStatus.delivered.status, OrderStatus.rejected.status])
        .orderBy('createdAt', descending: true)
        .limit(20)
        .get();

    return data;
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getDeilveredStreamPagination({
    required DocumentSnapshot lastOrder,
  }) async {
    final data = await firebaseFirestore
        .collection(
          Constants.firebaseCollectionOrders,
        )
        .where('status', whereIn: [
          OrderStatus.delivered.status,
          OrderStatus.rejected.status,
        ])
        .orderBy(
          'createdAt',
          descending: true,
        )
        .startAfterDocument(lastOrder)
        .limit(20)
        .get();
    return data;
  }

  @override
  Stream<List<OrderDto>> getOrderStream({
    required OrderStatus status,
  }) {
    final today = DateTime.now();
    int openHour = 1;
    // int closeHour = 23;
    final openTime = DateTime(today.year, today.month, today.day, openHour, 00);
    // final closeTime = DateTime(today.year, today.month, today.day, closeHour, 59);
    final openTimestamp = Timestamp.fromDate(openTime);
    print("---------${today.hour}}--$openTimestamp");
    // final closeTimestamp = Timestamp.fromDate(closeTime);

    return firebaseFirestore
        .collection(
          Constants.firebaseCollectionOrders,
        )
        .where(
          'status',
          isEqualTo: status.status,
        )
        // .where(
        //   "createdAt",
        //   isLessThanOrEqualTo: closeTimestamp,
        // )
        // .where(
        //   "createdAt",
        //   isGreaterThanOrEqualTo: openTimestamp,
        // )
        .orderBy('createdAt', descending: true)
        .withConverter(
          fromFirestore: (snapshot, _) => OrderDto.fromJson(snapshot.data()!),
          toFirestore: (orderDto, _) => orderDto.toJson(),
        )
        .snapshots()
        .map(
          (event) => event.docs.map(
            (e) {
              return e.data();
            },
          ).toList(),
        );
  }

  @override
  Future<void> acceptOrder({
    required String orderId,
    required int second,
  }) async {
    final time = DateTime.now().add(Duration(
      seconds: second,
    ));
    final Timestamp timestamp = Timestamp.fromDate(time);
    await firebaseFirestore.collection(Constants.firebaseCollectionOrders).doc(orderId).update({"status": OrderStatus.accepted.status, "orderPreparationTime": second, "orderAcceptedAt": timestamp});
  }

  @override
  Stream<QuerySnapshot<Map<String, dynamic>>> getOrderSnapshotStream({
    required OrderStatus status,
  }) {
    final today = DateTime.now();
    int openHour = 1;
    // int closeHour = 23;
    final openTime = DateTime(today.year, today.month, today.day, openHour, 00);
    // final closeTime = DateTime(today.year, today.month, today.day, closeHour, 59);
    final openTimestamp = Timestamp.fromDate(openTime);
    debugPrint("---------${today.hour}}--$openTimestamp");
    // final closeTimestamp = Timestamp.fromDate(closeTime);

    return firebaseFirestore
        .collection(
          Constants.firebaseCollectionOrders,
        )
        .where(
          'status',
          isEqualTo: status.status,
        )
        // .where(
        //   "createdAt",
        //   isLessThanOrEqualTo: closeTimestamp,
        // )
        // .where(
        //   "createdAt",
        //   isGreaterThanOrEqualTo: openTimestamp,
        // )
        .orderBy('createdAt', descending: true)
        .snapshots();
  }
}
