import 'package:elvan_admin/core/printer/header_printer.dart';
import 'package:elvan_admin/core/printer/web_printer.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/screens/order_details/widgets/order_details_row.dart';
import 'package:elvan_admin/features/order/ui/screens/order_details/widgets/order_details_timer.dart';
import 'package:elvan_admin/features/order/ui/screens/order_details/widgets/order_process_timer.dart';
import 'package:elvan_admin/features/order/ui/states/order_details_state.dart';
import 'package:elvan_admin/shared/constants/app_assets.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_shared/domain_models/order/order_status.dart';
import 'package:elvan_shared/dtos/cart/cart_item_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderDetatils extends HookConsumerWidget {
  const OrderDetatils({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderDtatilsProvider);

    useEffect(() {}, const []);

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
              child: body(context, state),
            ),
          ),
        ],
      ),
    );
  }

  Widget body(BuildContext context, OrderDetatilsState state) {
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
            itemCount: state.order?.items.length ?? 0,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              CartItemDto item = state.order!.items[index];
              return ListTile(
                title: Text(
                  item.foodItem.title,
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  "",
                  style: Theme.of(context).textTheme.titleMedium,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text(
                  "${AppStrings.multi} ${item.quantity}",
                  style: Theme.of(context).textTheme.titleLarge,
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
        OrderDetailsRow(
          title: AppStrings.subTotal,
          value: state.order?.subTotal ?? 0.0,
        ),
        //******************* Order Discount */
        OrderDetailsRow(
          title: AppStrings.discount,
          value: state.order?.discount ?? 0.0,
        ),

        //******************* Order Tax */
        const OrderDetailsRow(
          title: AppStrings.tax,
          value: 0,
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
                "${AppStrings.dollar} ${state.order?.total}",
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
            children: [
              state.order?.status.status == OrderStatus.pending.status
                  ? const OrderDeatilsTimer()
                  : const OrderDeatilsProcessTimer(),
            ],
          ),
        )
      ],
    );
  }
}
