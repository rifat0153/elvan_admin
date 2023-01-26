import 'package:elvan_shared/core/result/result.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';

abstract class OrderRepository {
    Result<Stream<List<OrderDto>>> getNewStream();
    Result<Stream<List<OrderDto>>> getReadyStream();
    Result<Stream<List<OrderDto>>> getProccessStream();
    Result<Stream<List<OrderDto>>> getDeilveredStream();
    Future<Result<String>> changeOrderStatus(      {required String orderId, required OrderStatus status});

}
