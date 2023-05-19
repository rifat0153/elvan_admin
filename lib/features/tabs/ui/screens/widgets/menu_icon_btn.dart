import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuIconBtn extends HookConsumerWidget {
  final void Function() onClick;
  final String path;
  final int seleectedIndex;
  final int index;
  const MenuIconBtn({Key? key, required this.onClick, required this.path, required this.index, required this.seleectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onClick,
      child: SizedBox(
        width: 18,
        height: 18,
        child: SvgPicture.asset(path, color: seleectedIndex == index ? AppColors.primaryRed : AppColors.grayA7),
      ),
    );
  }
}
