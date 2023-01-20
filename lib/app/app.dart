import 'package:auto_route/auto_route.dart';
import 'package:elvan_admin/app/router/app_router.dart';
import 'package:elvan_admin/app/router/app_router.gr.dart';
import 'package:elvan_admin/core/firebase/firebase_providers.dart';
import 'package:elvan_admin/features/auth/providers/auth_providers.dart';
import 'package:elvan_admin/features/auth/ui/notifer/auth_notifer.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_admin/shared/constants/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../shared/providers/scaffold_messenger/scaffold_messenger_key_provider.dart';

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
        final appRouter = ref.watch(appRouterProvider);
    final authState = ref.watch(authNotifierProvider);
    final firebaseAuth = ref.watch(firebaseAuthProvider);
    

    final scaffoldMessengerKey = ref.watch(scaffoldMessengerKeyProvider);

    return ScreenUtilInit(
      designSize: const Size(1512, 1048),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          scaffoldMessengerKey: scaffoldMessengerKey,
          title: AppStrings.appName,
          theme: ThemeData(
              primaryColor: AppColors.white,
              colorScheme: ThemeData().colorScheme.copyWith(
                    secondary: AppColors.primaryRed,
                    primary: AppColors.primaryRed
                  ),
              textTheme: AppTextTheme.textThemeData),
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
        );
      },
    );
  }
}
