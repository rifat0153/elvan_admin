import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ECard extends StatelessWidget {
  final String title;
  const ECard({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10,bottom: 10),
      constraints: BoxConstraints(maxWidth: 161.w,),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
     
      decoration: BoxDecoration(
        color: AppColors.grayA7,
        borderRadius: BorderRadius.circular(AppSize.radiusSM)
      ),
      child: Center(
        child: Text(title,style: Theme.of(context).textTheme.labelLarge?.copyWith(color: AppColors.white),),
      ),
    );
  }
}
