import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/shared/components/appbars/home_app_bar.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProcceingScreen extends HookConsumerWidget {
  const ProcceingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menu = ref.watch(menuProvider.notifier);

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          HomeAppBar(
              onClick: () {
                menu.open();
              },
              isDetails: true,
              title: AppStrings.processing),
          Expanded(
              child: Column(
            children: const [Text(AppStrings.processing)],
          ))
        ],
      ),
    );
  }
}
