import 'package:auto_route/annotations.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_details_notifier.dart';
import 'package:elvan_admin/features/order/ui/notifer/order_providers.dart';
import 'package:elvan_admin/features/order/ui/notifer/ready_screen_notifier.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/ready_item.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/empty_widget.dart';
import 'package:elvan_admin/features/order/ui/states/events/ui_event.dart';
import 'package:elvan_admin/shared/components/appbars/home_app_bar.dart';
import 'package:elvan_admin/shared/components/error/error_widget.dart';
import 'package:elvan_admin/shared/components/loader/loader_widget.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class ReadyScreen extends HookConsumerWidget {
  const ReadyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(readyScreenProvider.notifier);

    return Stack(
      children: [
        //****************Order Details */

        Container(
          color: AppColors.white,
          width: AppSize.width(context),
          height: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              HomeAppBar(
                  onClick: () {
                    notifier.onEvent(UIEvent.onDrawer(context: context));
                  },
                  title: AppStrings.ready),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Consumer(
                        builder: (context, ref, child) {
                          final state = ref.watch(readyStreamProvider);
                          final orderDtatils = ref.watch(orderDtatilsProvider);

                          return state.when(
                            data: (data) => data.isEmpty
                                ? const EmptyWidget(title: AppStrings.noReadyOrder, icon: Icons.local_dining_outlined)
                                : ListView.builder(
                                    itemCount: data.length,
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (BuildContext context, int index) {
                                      return ReadyItem(
                                        key: Key(data[index].id),
                                        order: data[index],
                                        selectedOrder: orderDtatils.order,
                                        onBtnClick: () {
                                          notifier.onEvent(UIEvent.onChangeStatus(context: context, order: data[index]));
                                        },
                                        onClick: () {
                                          notifier.onEvent(UIEvent.selecteItem(context: context, order: data[index]));
                                        },
                                      );
                                    },
                                  ),
                            error: (error, stackTrace) => MErrorWidget(
                              errorMessage: error.toString(),
                              onTab: () {
                                notifier.onEvent(const UIEvent.refresh());
                              },
                            ),
                            loading: () => const LoaderWidget(),
                          );
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
