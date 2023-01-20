import 'package:elvan_admin/features/foods/ui/screen/notifier/food_notifier.dart';
import 'package:elvan_admin/features/foods/ui/screen/widgets/add_on_item.dart';
import 'package:elvan_admin/features/foods/ui/screen/widgets/add_on_item_tab.dart';
import 'package:elvan_admin/shared/components/responsive/responsive_layout.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/shared/components/appbars/home_app_bar.dart';
import 'package:elvan_admin/shared/components/buttons/elanvnBtn.dart';
import 'package:elvan_admin/shared/constants/app_assets.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddItemScreen extends HookConsumerWidget {
  const AddItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuNotifier = ref.watch(menuProvider.notifier);
    final state = ref.watch(foodProvider);

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(color: AppColors.white),
      child: Column(
        children: [
          HomeAppBar(
              onClick: () {
                menuNotifier.open();
              },
              title: AppStrings.addOnItems),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                state.when(
                        loading: () {
                          return SizedBox(
                            width: AppSize.width(context),
                            height: AppSize.hight(context),
                            child: const Center(
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: CircularProgressIndicator(),
                              ),
                            ),
                          );
                        },
                        data: (data) {
                              return ResponsiveLayout.isDesktop(context)
                        ?  AddOnItem(foodItems: data,)
                        :  AddOnItemTab(foodItems: data,);
                        },
                        error: (err, st) {
                          return SizedBox(
                              width: AppSize.width(context),
                              height: AppSize.hight(context),
                              child: Center(
                                child: Text(
                                  "${err}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: AppColors.primaryRed),
                                ),
                              ));
                        },
                      )
              
              ],
            ),
          ))
        ],
      ),
    );
  }
}
