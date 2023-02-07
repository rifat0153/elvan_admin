import 'package:elvan_admin/features/order/ui/screens/order_details/widgets/build_step_item.dart';
import 'package:elvan_shared/domain_models/index.dart';
import 'package:flutter/material.dart';

class OrderItemBuildStep extends StatelessWidget {
  final CartItem cartItem;
  const OrderItemBuildStep({Key? key, required this.cartItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        cartItem.buildSteps.isNotEmpty
            ? ListView.builder(
                itemCount: cartItem.buildSteps.length,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return BuildStepItem(buildsteps: cartItem.buildSteps[index],);
                },
              )
            : Container(),
      ],
    );
  }
}
