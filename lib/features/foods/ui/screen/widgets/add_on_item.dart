import 'package:elvan_admin/features/foods/ui/notifier/food_notifier.dart';
import 'package:elvan_admin/shared/components/responsive/responsive_layout.dart';
import 'package:elvan_admin/shared/constants/app_assets.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_shared/domain_models/food/food_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddOnItem extends HookConsumerWidget {
  final List<FoodItem> foodItems;
  const AddOnItem({Key? key, required this.foodItems}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(foodProvider.notifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const Spacer(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: DataTable(
              columns: [
                DataColumn(
                  label: Text(
                    AppStrings.name,
                    style: ResponsiveLayout.isMobile(context) ? Theme.of(context).textTheme.bodySmall : Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                DataColumn(
                  label: Text(
                    AppStrings.price,
                    style: ResponsiveLayout.isMobile(context) ? Theme.of(context).textTheme.bodySmall : Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                DataColumn(
                  label: Text(
                    "",
                    style: ResponsiveLayout.isMobile(context) ? Theme.of(context).textTheme.bodySmall : Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ],
              rows: foodItems
                  .map((e) => DataRow(cells: [
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
                                  e.title,
                                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.gray),
                                ),
                              ),
                            ],
                          ),
                        ),
                        DataCell(
                          Text(
                            "${AppStrings.dollar} ${e.price}",
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AppColors.gray),
                          ),
                        ),
                        DataCell(Switch(
                          activeColor: AppColors.primaryRed,
                          value: e.isAvailable,
                          onChanged: (value) {
                            notifier.onActice(context, e, value);
                          },
                        )),
                      ]))
                  .toList()),
        )
      ],
    );
  }
}
