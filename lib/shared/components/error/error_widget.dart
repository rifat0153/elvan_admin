import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';

class MErrorWidget extends StatelessWidget {
  final void Function()? onTab;
  final String? errorMessage;
  const MErrorWidget({super.key, this.onTab, this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.width(context),
      height: AppSize.hight(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("$errorMessage", style: Theme.of(context).textTheme.labelLarge?.copyWith(color: AppColors.primaryRed)),
          ),
          ElevatedButton(
            onPressed: onTab,
            style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
              backgroundColor: MaterialStateProperty.all(AppColors.primaryRed),
            ),
            child: Text(
              AppStrings.refresh,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
