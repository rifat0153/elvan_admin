import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elvan_admin/core/firebase/firebase_providers.dart';
import 'package:elvan_admin/features/auth/data/repository/auth_repository.dart';
import 'package:elvan_admin/features/auth/data/repository/auth_repository_impl.dart';
import 'package:elvan_admin/features/order/domain/repository/order_repository.dart';
import 'package:elvan_shared/core/failure/failure.dart';
import 'package:elvan_shared/core/result/result.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:elvan_shared/dtos/order/order_status_dto.dart';
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
  Result<Stream<List<OrderDto>>> getDeilveredStream() {
    try {
      Stream<List<OrderDto>> data = firebaseFirestore
          .collection(Constants.firebaseCollectionRecentOrders)
          .where('status', isEqualTo: OrderStatus.delivered.status)
          .withConverter(
            fromFirestore: (snapshot, _) => OrderDto.fromJson(snapshot.data()!),
            toFirestore: (orderDto, _) => orderDto.toJson(),
          )
          .snapshots()
          .map(
            (event) => event.docs
                .map(
                  (e) => e.data(),
                )
                .toList(),
          );
      return Result.success(data);
    } on FirebaseException catch (e) {
      return Result.failure(Failure(error: "Error", message: e.message));
    }
  }

  @override
  Result<Stream<List<OrderDto>>> getNewStream() {
    try {
      Stream<List<OrderDto>> data = firebaseFirestore
          .collection(Constants.firebaseCollectionRecentOrders)
          .where('status', isEqualTo: 'pending')
          .withConverter(
            fromFirestore: (snapshot, _) => OrderDto.fromJson(snapshot.data()!),
            toFirestore: (orderDto, _) => orderDto.toJson(),
          )
          .snapshots()
          .map(
            (event) => event.docs
                .map(
                  (e) => e.data(),
                )
                .toList(),
          );
      return Result.success(data);
    } on FirebaseException catch (e) {
      return Result.failure(Failure(error: "Error", message: e.message));
    }
  }

  @override
  Result<Stream<List<OrderDto>>> getProccessStream() {
    try {
      Stream<List<OrderDto>> data = firebaseFirestore
          .collection(Constants.firebaseCollectionRecentOrders)
          .where('status', isEqualTo: 'accepted')
          .withConverter(
            fromFirestore: (snapshot, _) => OrderDto.fromJson(snapshot.data()!),
            toFirestore: (orderDto, _) => orderDto.toJson(),
          )
          .snapshots()
          .map(
            (event) => event.docs
                .map(
                  (e) => e.data(),
                )
                .toList(),
          );
      return Result.success(data);
    } on FirebaseException catch (e) {
      return Result.failure(Failure(error: "Error", message: e.message));
    }
  }

  @override
  Result<Stream<List<OrderDto>>> getAccepetStream() {
    try {
      Stream<List<OrderDto>> data = firebaseFirestore
          .collection(Constants.firebaseCollectionRecentOrders)
          .where('status', isEqualTo: 'accepted')
          .withConverter(
            fromFirestore: (snapshot, _) => OrderDto.fromJson(snapshot.data()!),
            toFirestore: (orderDto, _) => orderDto.toJson(),
          )
          .snapshots()
          .map(
            (event) => event.docs
                .map(
                  (e) => e.data(),
                )
                .toList(),
          );
      return Result.success(data);
    } on FirebaseException catch (e) {
      return Result.failure(Failure(error: "Error", message: e.message));
    }
  }

  @override
  Result<Stream<List<OrderDto>>> getReadyStream() {
    try {
      Stream<List<OrderDto>> data = firebaseFirestore
          .collection(Constants.firebaseCollectionRecentOrders)
          .where('status', isEqualTo: 'done')
          .withConverter(
            fromFirestore: (snapshot, _) => OrderDto.fromJson(snapshot.data()!),
            toFirestore: (orderDto, _) => orderDto.toJson(),
          )
          .snapshots()
          .map(
            (event) => event.docs
                .map(
                  (e) => e.data(),
                )
                .toList(),
          );
      return Result.success(data);
    } on FirebaseException catch (e) {
      return Result.failure(Failure(error: "Error", message: e.message));
    }
  }

  @override
  Future<Result<String>> changeOrderStatus(
      {required String orderId, required OrderStatus status}) async {
    try {
      await firebaseFirestore
          .collection(Constants.firebaseCollectionRecentOrders)
          .doc(orderId)
          .update({"status": status.status});

      final data = await firebaseFirestore
          .collection(Constants.firebaseCollectionRecentOrders)
          .doc(orderId)
          .withConverter(
            fromFirestore: (snapshot, _) => OrderDto.fromJson(snapshot.data()!),
            toFirestore: (orderDto, _) => orderDto.toJson(),
          )
          .get();

      return Result.success("Order ${data.data()?.status.status} success.");
    } on FirebaseException catch (e) {
      return Result.failure(Failure(error: "Error", message: e.message));
    }
  }
}
