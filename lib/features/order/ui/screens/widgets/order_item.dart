import 'package:elvan_admin/features/order/ui/screens/widgets/order_info.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/order_timer.dart';
import 'package:elvan_admin/shared/components/cards/eCard.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  final int index;
  final int? selectedInedx;
  final void Function() onClick;
  const OrderItem({Key? key,required this.index,  this.selectedInedx, required this.onClick }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Card(
        shape: RoundedRectangleBorder(
            side: selectedInedx != null ?   BorderSide(color: index == selectedInedx ? AppColors.primaryRed : AppColors.grayA7) : const BorderSide(color:  AppColors.grayA7),
            borderRadius: BorderRadius.circular(AppSize.radiusSL)),
        child: Container(
          constraints: const BoxConstraints(minHeight: 198),
          padding: const EdgeInsets.all(24),
          child: Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //** row by Order info section */
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const OrderInfo(),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: AppSize.width(context) / 2.8,
                    child: Wrap(
                      spacing: 8.0,
                      direction: Axis.horizontal,
                      children: [
                        1,
                        2,
                        3,
                        4,
                      ]
                          .map(
                            (e) => const ECard(title: "Pizza ×2"),
                          )
                          .toList(),
                    ),
                  )
                ],
              ),
    
              //** row by Order info section */
              const OrderTimer()
            ],
          ),
        ),
      ),
    );
  }
}
