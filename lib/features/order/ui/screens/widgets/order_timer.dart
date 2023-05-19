import 'package:elvan_admin/features/order/ui/notifer/new_order_screen_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/states/events/new_item_event.dart';
import 'package:elvan_admin/shared/components/buttons/eIconBtn.dart';
import 'package:elvan_admin/shared/components/buttons/elanvnBtn.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderTimer extends HookConsumerWidget {
  final Order order;
  const OrderTimer({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(orderDtatilsProvider.notifier);
    final minutes = useState<int>(0);

    useEffect(() {
      if (order.status.name == OrderStatus.pending.name) {
        notifier.setDefaultTimer(order).then((value) {
          if (value != null) {
            minutes.value = value.defaultTime ?? 0;
          }
        });
      }
      return null;
    }, const []);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        //** Timer Form */
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: EIconBtn(
                onClick: () {
                  if (minutes.value > 0) {
                    minutes.value--;
                  }
                },
                iconData: Icons.do_not_disturb_on,
              ),
            ),
            Container(
              width: 77,
              height: 70,
              margin: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.grayA7, width: 2),
                borderRadius: BorderRadius.circular(AppSize.radiusSL),
              ),
              child: Center(
                child: Text(
                  "${minutes.value} min",
                  style: Theme.of(context).textTheme.labelLarge,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElvanBtn(
                  title: AppStrings.reject,
                  color: AppColors.primaryRed,
                  onClick: () {
                    ref.read(newOrderScreenProvider.notifier).onEvent(NewItemEvent.onReject(data: order));
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElvanBtn(
                  title: AppStrings.accept,
                  color: AppColors.green,
                  textColor: AppColors.black,
                  onClick: () {
                    int second = minutes.value * 60;
                    ref.read(newOrderScreenProvider.notifier).onEvent(NewItemEvent.onAccept(second: second, data: order));
                  }),
            )
          ],
        )
      ],
    );
  }
}
