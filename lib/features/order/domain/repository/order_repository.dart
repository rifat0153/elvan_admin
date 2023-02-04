import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elvan_shared/core/result/result.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';

abstract class OrderRepository {
  Stream<List<OrderDto>> getNewStream();
  Result<Stream<List<OrderDto>>> getReadyStream();
  Result<Stream<List<OrderDto>>> getProccessStream();
  Future<Result<QuerySnapshot<Map<String, dynamic>>>> getDeilveredStream();
  Future<Result<QuerySnapshot<Map<String, dynamic>>>>
      getDeilveredStreamPagination({required DocumentSnapshot lastOrder});
  Future<Result<String>> changeOrderStatus(
      {required String orderId, required OrderStatus status});
  Future<int> countByStatus({required OrderStatus status});
  Future<int> countByDeliverdStatus();
}
