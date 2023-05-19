import 'package:elvan_admin/features/order/ui/notifer/delivered_order_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newOrderCountProvider = Provider<int>((ref) {
  final count = ref.watch(newOrderStreamProvider).value?.length ?? 0;
  return count;
});

final processCountProvider = Provider<int>((ref) {
  final count = ref.watch(processStreamProvider).value?.length ?? 0;
  return count;
});

final readyCountProvider = Provider<int>((ref) {
  final count = ref.watch(readyStreamProvider).value?.length ?? 0;
  return count;
});

final deliverdCountProvider = Provider<int>((ref) {
  final count = ref.watch(deliverdOrderProvider).orders.length;
  return count;
});
