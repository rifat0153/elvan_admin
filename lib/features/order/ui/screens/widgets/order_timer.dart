import 'package:elvan_admin/features/order/ui/notifer/new_order_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/timer_notifier.dart';
import 'package:elvan_admin/features/order/ui/states/events/new_item_event.dart';
import 'package:elvan_admin/shared/components/buttons/eIconBtn.dart';
import 'package:elvan_admin/shared/components/buttons/elanvnBtn.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderTimer extends HookConsumerWidget {
  const OrderTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(newOrderProvider);
    final notifier = ref.watch(newOrderProvider.notifier);
    final minutes = useState<int>(30);
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //** Timer Form */
        Flex(
          direction:
              AppSize.width(context) < 610 ? Axis.vertical : Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: EIconBtn(
                onClick: () {
                  if (minutes.value > 0) {
                    minutes.value--;
                    notifier.onEvent(NewItemEvent.onMinutes(minutes.value));
                  }
                },
                iconData: Icons.do_not_disturb_on,
              ),
            ),
            Container(
              width: 77.w,
              height: 70.w,
              margin: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.grayA7, width: 2),
                borderRadius: BorderRadius.circular(AppSize.radiusSL),
              ),
              child: Center(
                child: Text(
                  "${minutes.value} min",
                  style: Theme.of(context).textTheme.labelLarge,
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
                    notifier.onEvent(NewItemEvent.onMinutes(minutes.value));
                  }
                },
                iconData: Icons.add_circle,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          constraints: BoxConstraints(
            maxWidth: AppSize.width(context) / 6.2,
          ),
          child: Center(
            child: Wrap(
              direction: Axis.horizontal,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElvanBtn(
                      title: AppStrings.reject,
                      color: AppColors.primaryRed,
                      onClick: () {
                        print("---click");
                        ref.read(timerProvider.notifier).stopTimer();
                        notifier.onEvent(const NewItemEvent.onReject(null));
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElvanBtn(
                      title: AppStrings.accept,
                      color: AppColors.green,
                      textColor: AppColors.black,
                      onClick: () {
                        ref.read(timerProvider.notifier).setTimer(minutes.value);
                        ref.read(timerProvider.notifier).start();
                        notifier.onEvent(const NewItemEvent.onAccept(data: ''));
                      }),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
