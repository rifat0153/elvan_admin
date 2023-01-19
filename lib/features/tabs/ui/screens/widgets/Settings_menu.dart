import 'package:auto_route/auto_route.dart';
import 'package:elvan_admin/app/router/navigation_provider.dart';
import 'package:elvan_admin/features/tabs/ui/screens/widgets/menu_btn.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsMenu extends HookConsumerWidget {
  final TabsRouter router;
  const SettingsMenu({
    required this.router,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigation = ref.watch(navigatorProvider.notifier);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 36, left: 24),
          child: Text(
            AppStrings.settings,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),

        //************ NewOrder */
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 24, right: 10),
          child: MenuBtn(
              onClick: () {
                router.setActiveIndex(0);
              },
              title: AppStrings.foodCategory),
        ),
        //************ Processing */
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 24, right: 10),
          child: MenuBtn(
              onClick: () {
                 router.setActiveIndex(1);
              },
              title: AppStrings.addOnItems),
        ),
        //************ Ready */
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 24, right: 10),
          child: MenuBtn(
              onClick: () {
                 router.setActiveIndex(2);
              },
              title: AppStrings.time),
        ),
      
      ],
    );
  }
}
