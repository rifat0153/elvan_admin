import 'package:elvan_admin/app/router/navigation_provider.dart';
import 'package:elvan_admin/core/firebase/firebase_providers.dart';
import 'package:elvan_admin/shared/components/appbars/popup_menu.dart';
import 'package:elvan_admin/shared/constants/app_assets.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeAppBar extends HookConsumerWidget {
  final String title;
  final void Function() onClick;
  final bool isDetails;
  const HomeAppBar({Key? key, required this.onClick, required this.title, this.isDetails = false}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(firebaseAuthProvider);
    final navigatoin = ref.watch(navigatorProvider.notifier);
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        height: 79,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IntrinsicHeight(
              child: Row(
                children: [
                  //****************** MenuBtn */
                  Padding(
                    padding: const EdgeInsets.only(left: 27),
                    child: InkWell(
                      onTap: onClick,
                      child: SizedBox(
                        width: 18,
                        height: 18,
                        child: SvgPicture.asset(AppAssets.menu),
                      ),
                    ),
                  ),
                  //**********Page title */
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: AppColors.black),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text(
                        "${authState.currentUser?.email}",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),

                  MyPopupMenu(onclick: (value) {
                    if (value == 1) {
                      authState.signOut();
                      navigatoin.popAllLogout();
                    }
                  })
                ],
              ),
            ),
            //*******Divider */
            const Divider()
          ],
        ),
      ),
    );
  }
}
