import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_providers.dart';
import 'package:elvan_admin/features/order/ui/notifer/timer_notifier.dart';
import 'package:elvan_admin/features/order/ui/states/events/new_item_event.dart';
import 'package:elvan_admin/features/timer/domain/usecases/timer_usecase.dart';
import 'package:elvan_admin/shared/components/buttons/eIconBtn.dart';
import 'package:elvan_admin/shared/components/buttons/elanvnSmallBtn.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderTimerSL extends HookConsumerWidget {
  final Order order;
  const OrderTimerSL({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(orderDtatilsProvider.notifier);
    final minutes = useState<int>(30);

    final defaultNotifier = ref.watch(timerUsecaseProvider);

    useEffect(() {
      if (order.status.name == OrderStatus.pending.name) {
        defaultNotifier.getDefaultTimer().then((value) {
          value.when(
            success: ((data) {
              minutes.value = data.defaultTime ?? 0;
              notifier.setMin(orderId: order.id, min: data.defaultTime ?? 0);
            }),
            failure: (failure) {},
          );
        });
      }
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
                    notifier.setMin(min: minutes.value, orderId: order.id);
                  }
                },
                iconData: Icons.do_not_disturb_on,
              ),
            ),
            Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.grayA7, width: 2),
                borderRadius: BorderRadius.circular(AppSize.radiusSL),
              ),
              child: Center(
                child: Text(
                  "${minutes.value} min",
                  style: Theme.of(context).textTheme.caption,
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
                    notifier.setMin(min: minutes.value, orderId: order.id);
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
        Wrap(
          direction: Axis.horizontal,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElvanSmallBtn(
                  width: 70,
                  title: AppStrings.reject,
                  color: AppColors.primaryRed,
                  onClick: () {
                    ref.read(newOrderRejectProvider(order));
                    ref.read(orderDtatilsProvider.notifier).close();
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElvanSmallBtn(
                  width: 70,
                  title: AppStrings.accept,
                  color: AppColors.green,
                  textColor: AppColors.black,
                  onClick: () {
                    int second = minutes.value * 60;
                    ref.read(newOrderAcceptProvider(order, second));
                    ref.read(orderDtatilsProvider.notifier).close();
                  }),
            )
          ],
        )
      ],
    );
  }
}
