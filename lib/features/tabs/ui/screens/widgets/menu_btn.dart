import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuBtn extends HookConsumerWidget {
  final String title;
  final int count;
  final int? selectedIndex;
  final int? index;
  final void Function() onClick;

  const MenuBtn({
    Key? key,
    this.count = 0,
    required this.onClick,
    required this.title,
    this.selectedIndex,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isClick = useState<bool>(false);

    return InkWell(
      onTap: (() {
        isClick.value = !isClick.value;
        onClick();
      }),
      child: SizedBox(
        width: 264,
        height: 44,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: selectedIndex == null
                      ? AppColors.gray
                      : selectedIndex == index
                          ? AppColors.primaryRed
                          : AppColors.gray),
            ),
            if (count > 0)
              Container(
                height: 16,
                constraints: const BoxConstraints(minWidth: 27),
                decoration: BoxDecoration(
                  color: AppColors.primaryRed,
                  borderRadius: BorderRadius.circular(AppSize.radiusMD),
                ),
                child: Center(
                  child: Text(
                    "$count",
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: AppColors.white,
                        ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
