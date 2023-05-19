import 'package:elvan_admin/features/auth/ui/notifer/auth_notifer.dart';
import 'package:elvan_admin/features/auth/ui/screens/widgets/login_form.dart';
import 'package:elvan_admin/shared/constants/app_assets.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MobileLoginScreen extends HookConsumerWidget {
  const MobileLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    final authState = ref.watch(authNotifierProvider);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: Column(
              children: [
                //**************Headlinge */
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: SizedBox(width: 120, height: 90, child: SvgPicture.asset(AppAssets.logo)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "${AppStrings.appName} Access",
                        style: Theme.of(context).textTheme.headlineSmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      AppStrings.loginSubTitle,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(color: AppColors.gray),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

                //************************ Form */
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: LoginForm(),
                ),

                authState.error != null
                    ? Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "${authState.error}",
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppColors.primaryRed),
                        ),
                      )
                    : Container()
              ],
            ),
          )
        ],
      ),
    );
  }
}
