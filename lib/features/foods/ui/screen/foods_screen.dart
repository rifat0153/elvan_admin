import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/shared/components/appbars/home_app_bar.dart';
import 'package:elvan_admin/shared/components/buttons/elanvnBtn.dart';
import 'package:elvan_admin/shared/constants/app_assets.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FoodsScreen extends HookConsumerWidget {
  const FoodsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuNotifier = ref.watch(menuProvider.notifier);

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
              title: AppStrings.foodCategory),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: ElvanBtn(
                        title: AppStrings.addNew,
                        onClick: () {},
                        color: AppColors.primaryRed,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: DataTable(
                    columns: [
                      DataColumn(
                        label: Text(
                          AppStrings.categoryName,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          AppStrings.totalItem,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          "",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          "",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                    ],
                    rows: List.generate(
                        100,
                        (index) => DataRow(cells: [
                              DataCell(
                                Row(
                                  children: [
                                    Image.asset(
                                      AppAssets.pizza,
                                      width: 30,
                                      height: 30,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Pizza",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(color: AppColors.gray),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              DataCell(
                                Text(
                                  "7",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(color: AppColors.gray),
                                ),
                              ),
                              DataCell(
                                TextButton(
                                  onPressed: (() {}),
                                  child: Text(
                                    AppStrings.edit,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(color: AppColors.primaryRed),
                                  ),
                                ),
                              ),
                              DataCell(Switch(
                                activeColor: AppColors.primaryRed,
                                value: false,
                                onChanged: (value) {},
                              )),
                            ])).toList(),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
