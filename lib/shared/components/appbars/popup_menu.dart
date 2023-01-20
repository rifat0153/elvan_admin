import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';

class MyPopupMenu extends StatelessWidget {
  final void Function(int) onclick;
  const MyPopupMenu({Key? key,required this.onclick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      onSelected: onclick,
      itemBuilder: (context) => [
        // popupmenu item 1
        PopupMenuItem(
          value: 1,
          // row has two child icon and text.
          child: Row(
            children: const [
              Icon(Icons.lock_open_rounded),
              SizedBox(
                // sized box with width 10
                width: 10,
              ),
              Text(AppStrings.logout)
            ],
          ),
        ),
      ],
      offset: Offset(0, 49),
      color: AppColors.white,
      elevation: 2,
    );
  }
}
