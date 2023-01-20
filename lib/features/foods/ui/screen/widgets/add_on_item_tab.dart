import 'package:elvan_admin/shared/components/buttons/elanvnBtn.dart';
import 'package:elvan_admin/shared/components/responsive/responsive_layout.dart';
import 'package:elvan_admin/shared/constants/app_assets.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_shared/dtos/food/food_item_dto.dart';
import 'package:flutter/material.dart';

class AddOnItemTab extends StatelessWidget {
  final List<FoodItemDto> foodItems;
  const AddOnItemTab({Key? key,required this.foodItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            Spacer(),
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
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Expanded(
                child: FittedBox(
                  child: DataTable(
                    columns: [
                      DataColumn(
                        label: Text(
                          AppStrings.name,
                          style: ResponsiveLayout.isMobile(context)
                              ? Theme.of(context).textTheme.bodySmall
                              : Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          AppStrings.price,
                          style: ResponsiveLayout.isMobile(context)
                              ? Theme.of(context).textTheme.bodySmall
                              : Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          "",
                          style: ResponsiveLayout.isMobile(context)
                              ? Theme.of(context).textTheme.bodySmall
                              : Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          "",
                          style: ResponsiveLayout.isMobile(context)
                              ? Theme.of(context).textTheme.bodySmall
                              : Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                    ],
                    rows: foodItems.map((e) => DataRow(cells: [
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
                                "${e.title}",
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
                          "${AppStrings.dollar} ${e.price}",
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
                    ])).toList()
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
