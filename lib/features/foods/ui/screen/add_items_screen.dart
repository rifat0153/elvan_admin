import 'package:elvan_admin/features/foods/ui/screen/widgets/add_on_item.dart';
import 'package:flutter/material.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/shared/components/appbars/home_app_bar.dart';
import 'package:elvan_admin/shared/components/buttons/elanvnBtn.dart';
import 'package:elvan_admin/shared/constants/app_assets.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddItemScreen extends HookConsumerWidget {
  const AddItemScreen({Key? key}) : super(key: key);

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
              title: AppStrings.addOnItems),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                ListView.builder(
                  itemCount: 4,
                   physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return AddOnItem();
                  },
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
