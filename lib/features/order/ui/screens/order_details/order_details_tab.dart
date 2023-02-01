import 'package:elvan_admin/core/printer/header_printer.dart';
import 'package:elvan_admin/core/printer/web_printer.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/screens/order_details/widgets/order_details_row_tab.dart';
import 'package:elvan_admin/features/order/ui/screens/order_details/widgets/order_details_timer.dart';
import 'package:elvan_admin/shared/constants/app_assets.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderDetatilsTab extends HookConsumerWidget {
  const OrderDetatilsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderDtatilsProvider);
    return Container(
      decoration: const BoxDecoration(
          border: Border(left: BorderSide(color: AppColors.gray400, width: 1))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          //******************** Header */
          SizedBox(
            height: 49,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    AppStrings.orderDetails,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: AppColors.grayA7),
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      final printer =
                          ref.read(webPrinterNotifierProvider.notifier);
                      printer.printInvoice(
                          headerPrinter: const HeaderPrinter(
                              address: "701 Preston Ave,Pasadena,Texas",
                              imageUrl: AppAssets.applogo,
                              phone: "(713) 473-2503",
                              title: "ELVAN",
                              website: "elvan.com"),
                          order: state.order!);
                    },
                    icon: const Icon(
                      Icons.print,
                      color: AppColors.grayA7,
                    ))
              ],
            ),
          ),
          const Divider(),
          SizedBox(
            height: AppSize.hight(context) - 100,
            child: SingleChildScrollView(
              child: body(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //********************* Order Items */
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, bottom: 10),
          child: Text(
            AppStrings.orderedItems,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: AppColors.gray),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
            itemCount: 4,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  "Margerita Pizza",
                  style: Theme.of(context).textTheme.titleSmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  "with Prawn, Extra Sauce and Cheese",
                  style: Theme.of(context).textTheme.caption,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text(
                  "${AppStrings.multi} 2",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              );
            },
          ),
        ),

        //********************** Order Transections */
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Divider(thickness: 2),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            AppStrings.transectionDetails,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: AppColors.gray),
          ),
        ),

        //******************* Order SubTotal */
        const OrderDetailsRowTab(
          title: AppStrings.subTotal,
          value: 4563,
        ),
        //******************* Order Charge */
        const OrderDetailsRowTab(
          title: AppStrings.charge,
          value: 63,
        ),

        //******************* Order Tax */
        const OrderDetailsRowTab(
          title: AppStrings.tax,
          value: 3,
        ),

        //******************* Order Total */
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Divider(thickness: 2),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  AppStrings.total,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Text(
                "${AppStrings.dollar} 46394",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
        //******************* Order Total */
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Divider(thickness: 2),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              OrderDeatilsTimer(),
            ],
          ),
        )
      ],
    );
  }
}
