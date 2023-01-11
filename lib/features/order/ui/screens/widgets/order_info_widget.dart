import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderInfoWidget extends StatelessWidget {
  final String title;
  final String? value;
  const OrderInfoWidget({Key? key, required this.title, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: AppColors.gray),
          ),
          SizedBox(height: 10,),
          Text(
            "$value",
            style: Theme.of(context).textTheme.titleMedium,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
