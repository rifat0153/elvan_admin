import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';

class DesktopLoginScreen extends StatelessWidget {
  const DesktopLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayF7,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Card(
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: AppSize.width(context) / 3,
                  maxHeight: AppSize.width(context) / 2),
              child: Column(
                children: [

                  //**************Headlinge */
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${AppStrings.appName} Access",
                          style: Theme.of(context).textTheme.displaySmall),
                      const SizedBox(height: 8),
                      Text(AppStrings.loginSubTitle,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(color: AppColors.gray)),
                    ],
                  ),

                //************************ Form */

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
