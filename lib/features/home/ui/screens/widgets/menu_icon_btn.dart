import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuIconBtn extends HookConsumerWidget {
  final void Function() onClick;
  final String path;
  const MenuIconBtn({Key? key, required this.onClick, required this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isClick = useState<bool>(false);
    return InkWell(
      onTap: () {
        isClick.value = !isClick.value;
        onClick();
      },
      child: SizedBox(
        width: 18,
        height: 18,
        child: SvgPicture.asset(path,
            color: isClick.value ? AppColors.primaryRed : AppColors.grayA7),
      ),
    );
  }
}
