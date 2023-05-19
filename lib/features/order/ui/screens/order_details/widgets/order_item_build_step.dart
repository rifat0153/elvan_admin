import 'package:elvan_admin/features/order/ui/screens/order_details/widgets/build_step_item.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_shared/domain_models/index.dart';
import 'package:flutter/material.dart';

class OrderItemBuildStep extends StatelessWidget {
  final CartItem cartItem;
  const OrderItemBuildStep({Key? key, required this.cartItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        cartItem.instructions.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 20),
                child: Text(
                  "${AppStrings.instructions} :",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(color: AppColors.gray),
                ),
              )
            : Container(),
        cartItem.instructions.isNotEmpty
            ? ListView.builder(
                itemCount: cartItem.instructions.length,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Text(
                    " # ${cartItem.instructions[index]}",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.gray),
                  );
                },
              )
            : Container(),
        const SizedBox(
          height: 20,
        ),
        cartItem.buildSteps.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 20),
                child: Text(
                  "${AppStrings.buildSteps} :",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(color: AppColors.gray),
                ),
              )
            : Container(),
        cartItem.buildSteps.isNotEmpty
            ? ListView.builder(
                itemCount: cartItem.buildSteps.length,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return BuildStepItem(
                    buildsteps: cartItem.buildSteps[index],
                    index: index + 1,
                  );
                },
              )
            : Container(),
      ],
    );
  }
}
