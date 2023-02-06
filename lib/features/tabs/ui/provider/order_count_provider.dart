import 'package:elvan_admin/features/order/data/repository/order_repositoryImpl.dart';
import 'package:elvan_admin/features/order/ui/notifer/delivered_order_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_providers.dart';
import 'package:elvan_admin/features/order/ui/notifer/process_order_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/ready_order_notifier.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newOrderCountProvider = Provider<int>((ref) {
  final count = ref.watch(newOrderStreamProvider).value?.length ?? 0;
  return count;
});

// final newOrderCountProvider = Provider<int>((ref) {
//   final count = ref.watch(newOrderProvider).data?.length ?? 0;
//   return count;
// });

final processCountProvider = Provider<int>((ref) {
  final count = ref.watch(processOrderProvider).data?.length ?? 0;
  return count;
});

final readyCountProvider = Provider<int>((ref) {
  final count = ref.watch(readyOrderProvider).data?.length ?? 0;
  return count;
});

final deliverdCountProvider = Provider<int>((ref) {
  ref.read(deliverdOrderProvider.notifier).getData();
  final count = ref.watch(deliverdOrderProvider).orders.length;
  return count;
});
