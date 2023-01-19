import 'package:elvan_admin/features/order/ui/notifer/new_order_notifier.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/food_variants.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/food_variants_tabs.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/order_info.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/order_info_tab.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/order_timer.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/order_timer_tab.dart';
import 'package:elvan_admin/shared/components/buttons/elanvnSmallBtn.dart';
import 'package:elvan_admin/shared/components/cards/eCard.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CommonItemTab extends HookConsumerWidget {
  final int index;
  final int? selectedInedx;
  final void Function() onClick;
  final void Function() onBtnClick;
  final String btnTitle;
  const CommonItemTab(
      {Key? key,
      required this.index,
      this.selectedInedx,
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
                  side: selectedInedx != null
                      ? BorderSide(
                          color: index == selectedInedx
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
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: OrderInfo(),
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
                    const FoodVarientsTab(),
                    //** row by Order set time section */
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElvanSmallBtn(
                            width: 95,
                            title: btnTitle,
                            color: AppColors.green,
                            textColor: AppColors.black,
                            onClick: onBtnClick),
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
