import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:flutter/material.dart';

class ElvanBtn extends StatelessWidget {
  final String title;
  final void Function() onClick;
  final double width;
  final Color color;
  const ElvanBtn({
    Key? key,
    required this.title,
    this.width = 99.0,
    this.color = AppColors.primaryRed,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onClick,
        
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          fixedSize: MaterialStateProperty.all(Size(width, 40)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.radiusXL),
          ))
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: AppColors.white),
          ),
        ));
  }
}
