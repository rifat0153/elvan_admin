import 'package:elvan_admin/shared/components/buttons/eIconBtn.dart';
import 'package:elvan_admin/shared/components/buttons/elanvnBtn.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderTimer extends StatelessWidget {
  const OrderTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //** Timer Form */
        Row(
          children: [
            EIconBtn(
              onClick: () {},
              iconData: Icons.do_not_disturb_on,
            ),
            Container(
              width: 77.w,
              height: 70.w,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.grayA7, width: 2),
                borderRadius: BorderRadius.circular(AppSize.radiusSL),
              ),
              child: Center(
                child: Text(
                  "30 min",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
            ),
            EIconBtn(
              onClick: () {},
              iconData: Icons.add_circle,
            ),
          ],
        ),
        SizedBox(height: 20,),
        Row(
          children: [
            ElvanBtn(
                title: AppStrings.reject,
                color: AppColors.grayA7,
                onClick: () {}),
           const SizedBox(
              width: 20,
            ),
            ElvanBtn(title: AppStrings.accept, onClick: () {})
          ],
        )
      ],
    );
  }
}
