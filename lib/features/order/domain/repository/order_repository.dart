import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';

abstract class OrderRepository {
  Stream<List<OrderDto>> getOrderStream({required OrderStatus status, required Timestamp timestamp});

  Future<QuerySnapshot<Map<String, dynamic>>>
      getDeilveredStreamPagination({required DocumentSnapshot lastOrder});
  Future<void> changeOrderStatus(
      {required String orderId, required OrderStatus status});

}
