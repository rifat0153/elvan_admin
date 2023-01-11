import 'package:elvan_admin/features/home/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/order_item.dart';
import 'package:elvan_admin/shared/components/appbars/home_app_bar.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewOrderScreen extends HookConsumerWidget {
  const NewOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuNotifier = ref.watch(menuProvider.notifier);

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          HomeAppBar(
              onClick: () {
                menuNotifier.open();
              },
              title: AppStrings.newOrders),
          Expanded(
              child: SizedBox(
                width: AppSize.width(context),
                child: SingleChildScrollView(
            child: Column(
                children: [
                  SizedBox(
                    width: AppSize.width(context) /2.2,
                    child: ListView.builder(
                      itemCount: 10,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return const OrderItem();
                      },
                    ),
                  ),
                ],
            ),
          ),
              ))
        ],
      ),
    );
  }
}
