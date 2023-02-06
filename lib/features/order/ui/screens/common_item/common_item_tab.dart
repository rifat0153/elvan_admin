import 'package:elvan_admin/features/order/ui/screens/widgets/food_variants_tabs.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/order_info.dart';
import 'package:elvan_admin/shared/components/buttons/elanvnSmallBtn.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CommonItemTab extends HookConsumerWidget {
  final Order order;
  final Order? selectedOrder;
  final void Function() onClick;
  final void Function() onBtnClick;
  final String btnTitle;
  const CommonItemTab(
      {Key? key,
      required this.order,
      this.selectedOrder,
      required this.btnTitle,
      required this.onBtnClick,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: onClick,
            child: Card(
              shape: RoundedRectangleBorder(
                  side: selectedOrder != null
                      ? BorderSide(
                          color: order == selectedOrder
                              ? AppColors.primaryRed
                              : AppColors.grayA7)
                      : const BorderSide(color: AppColors.grayA7),
                  borderRadius: BorderRadius.circular(AppSize.radiusSL)),
              child: Container(
                constraints: const BoxConstraints(
                  minHeight: 198,
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //** row by Order info section */
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: OrderInfo(
                        order: order,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Text(
                        AppStrings.varients,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(color: AppColors.gray),
                      ),
                    ),
                    FoodVarientsTab(
                      order: order,
                    ),
                    //** row by Order set time section */
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Builder(
                        builder: (context) {
                           if (order.status.status == OrderStatus.delivered.status ||
                                      order.status.status == OrderStatus.rejected.status) {
                                    return  Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Card(
                                        color:  order.status.status ==
                                                  OrderStatus.delivered.status
                                              ? AppColors.gray
                                              : AppColors.primaryRed,
                                        shape: RoundedRectangleBorder(
                                          
                                          borderRadius: BorderRadius.circular(13)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                          child: Text(order.status.status,style: Theme.of(context).textTheme.labelLarge?.copyWith(color: AppColors.white),),
                                        ),
                                      )
                                    );
                                  }
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ElvanSmallBtn(
                                width: 95,
                                title: btnTitle,
                                color: AppColors.green,
                                textColor: AppColors.black,
                                onClick: onBtnClick),
                          );
                        }
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
