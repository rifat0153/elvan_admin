import 'package:elvan_admin/features/order/data/repository/order_repositoryImpl.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newOrderCountProvider = FutureProvider<int>((ref) async {
  final count = await ref
      .watch(orderRepositoryProvider)
      .countByStatus(status: OrderStatus.pending);
  return count;
});

final processCountProvider = FutureProvider<int>((ref) async {
  final count = await ref
      .watch(orderRepositoryProvider)
      .countByStatus(status: OrderStatus.accepted);
  return count;
});

final readyCountProvider = FutureProvider<int>((ref) async {
  final count = await ref
      .watch(orderRepositoryProvider)
      .countByStatus(status: OrderStatus.done);
  return count;
});

final deliverdCountProvider = FutureProvider<int>((ref) async {
  final count = await ref
      .watch(orderRepositoryProvider)
      .countByDeliverdStatus();
  return count;
});
