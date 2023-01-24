import 'package:elvan_admin/features/order/ui/notifer/new_order_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/timer_notifier.dart';
import 'package:elvan_admin/features/order/ui/states/events/new_item_event.dart';
import 'package:elvan_admin/features/timer/ui/notifier/timer_notifier.dart';
import 'package:elvan_admin/shared/components/buttons/eIconBtn.dart';
import 'package:elvan_admin/shared/components/buttons/elanvnBtn.dart';
import 'package:elvan_admin/shared/components/buttons/elanvnSmallBtn.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderTimerTab extends HookConsumerWidget {
  final OrderDto order;
  const OrderTimerTab({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(newOrderProvider);
    final notifier = ref.watch(orderDtatilsProvider.notifier);
    final minutes = useState<int>(30);
      final defaultTimer = ref.watch(defaultTimerProvider);

    useEffect(() {
      if (order.status.status == OrderStatus.pending) {
        minutes.value = defaultTimer.minutes;
      }
    }, const []);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        //** Timer Form */
        timerSection(minutes, notifier, context),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            btnsSection(ref, notifier, minutes),
          ],
        ),
      ],
    );
  }

  Row btnsSection(WidgetRef ref, OrderDetatilsNotifier notifier,
      ValueNotifier<int> minutes) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElvanSmallBtn(
              title: AppStrings.reject,
              color: AppColors.primaryRed,
              onClick: () {
                print("---click");
                ref.read(timerProvider.notifier).stopTimer();
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElvanSmallBtn(
              title: AppStrings.accept,
              color: AppColors.green,
              textColor: AppColors.black,
              onClick: () {
                ref.read(timerProvider.notifier).setTimer(minutes.value);
                ref.read(timerProvider.notifier).start();
              }),
        )
      ],
    );
  }

  Row timerSection(ValueNotifier<int> minutes, OrderDetatilsNotifier notifier,
      BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: EIconBtn(
            onClick: () {
              if (minutes.value > 0) {
                minutes.value--;
                notifier.setMin(min:minutes.value,orderId: order.id);
              }
            },
            iconData: Icons.do_not_disturb_on,
          ),
        ),
        Container(
          width: 60,
          height: 40,
          margin: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grayA7, width: 2),
            borderRadius: BorderRadius.circular(AppSize.radiusSL),
          ),
          child: Center(
            child: Text(
              "${minutes.value} min",
              style: Theme.of(context).textTheme.labelSmall,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.clip,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: EIconBtn(
            onClick: () {
              if (minutes.value >= 0) {
                minutes.value++;
                notifier.setMin(min:minutes.value,orderId: order.id);
              }
            },
            iconData: Icons.add_circle,
          ),
        ),
      ],
    );
  }
}
