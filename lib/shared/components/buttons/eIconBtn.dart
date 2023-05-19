import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class EIconBtn extends StatelessWidget {
  final void Function() onClick;
  final IconData iconData;
  final Color color;
  final double size;
  const EIconBtn({Key? key, required this.onClick, this.iconData = Icons.add_circle, this.color = AppColors.primaryRed, this.size = 30}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onClick,
        child: Icon(
          iconData,
          color: color,
          size: size,
        ));
  }
}
