import 'package:elvan_admin/shared/components/buttons/elanvnBtn.dart';
import 'package:elvan_admin/shared/components/responsive/responsive_layout.dart';
import 'package:elvan_admin/shared/constants/app_assets.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';

class AddOnItem extends StatelessWidget {
  const AddOnItem({Key? key}) : super(key: key);

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
                "Pizza",
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
            rows: List.generate(
                10,
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
                          "${AppStrings.dollar} 7",
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
    );
  }
}
