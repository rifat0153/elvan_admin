import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderInfoSmallWidget extends StatelessWidget {
  final String title;
  final String? value;
  const OrderInfoSmallWidget({Key? key, required this.title, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(color: AppColors.gray),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "$value",
            style: Theme.of(context).textTheme.labelLarge,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
