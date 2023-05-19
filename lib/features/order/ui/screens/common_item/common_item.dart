import 'package:elvan_admin/features/order/ui/screens/widgets/food_variants.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/order_info.dart';
import 'package:elvan_admin/shared/components/buttons/elanvnBtn.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CommonItem extends HookConsumerWidget {
  final Order order;
  final Order? selectedOrder;
  final void Function() onClick;
  final void Function() onBtnClick;
  final String btnTitle;
  const CommonItem({Key? key, required this.order, this.selectedOrder, required this.btnTitle, required this.onBtnClick, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onClick,
              child: Card(
                shape: RoundedRectangleBorder(
                    side: selectedOrder != null ? BorderSide(color: order.id == selectedOrder?.id ? AppColors.primaryRed : AppColors.grayA7) : const BorderSide(color: AppColors.grayA7),
                    borderRadius: BorderRadius.circular(AppSize.radiusSL)),
                child: Container(
                  // constraOrderDtos:
                  //     BoxConstraOrderDtos(maxWidth: AppSize.width(context) / 1.5),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      //** row by Order info section */
                      Expanded(
                        flex: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            OrderInfo(
                              order: order,
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            FoodVarients(
                              order: order,
                            )
                          ],
                        ),
                      ),

                      //** row by Order set time section */
                      Expanded(
                          flex: 2,
                          child: Container(
                            constraints: const BoxConstraints(minHeight: 168),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Builder(builder: (context) {
                                  if (order.status.status == OrderStatus.delivered.status || order.status.status == OrderStatus.rejected.status) {
                                    return Padding(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: Card(
                                          color: order.status.status == OrderStatus.delivered.status ? AppColors.gray : AppColors.primaryRed,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                                            child: Text(
                                              order.status.status,
                                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.white),
                                            ),
                                          ),
                                        ));
                                  }
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: ElvanBtn(width: 120, title: btnTitle, color: AppColors.green, textColor: AppColors.black, onClick: onBtnClick),
                                  );
                                }),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
