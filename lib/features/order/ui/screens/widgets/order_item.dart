import 'package:elvan_admin/features/order/ui/screens/widgets/order_info.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/order_timer.dart';
import 'package:elvan_admin/shared/components/cards/eCard.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 198),
      child: Card(
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: AppColors.grayA7),
            borderRadius: BorderRadius.circular(AppSize.radiusSL)),
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //** row by Order info section */
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const OrderInfo(),
                  const SizedBox(
                    height: 40,
                  ),
                  ConstrainedBox(
                    constraints:BoxConstraints(minHeight: 80,maxWidth: AppSize.width(context)/3.4),
                    child: Wrap(
                      spacing: 8.0,
                      direction: Axis.horizontal,
                      children: [1, 2, 3, 4,]
                          .map(
                            (e) => const ECard(title: "Pizza ×2"),
                          )
                          .toList(),
                    ),
                  )
                ],
              ),
              const Spacer(),
              //** row by Order info section */
              const OrderTimer()
            ],
          ),
        ),
      ),
    );
  }
}
