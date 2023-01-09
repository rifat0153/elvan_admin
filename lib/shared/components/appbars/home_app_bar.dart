import 'package:elvan_admin/shared/constants/app_assets.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends StatelessWidget {
  final String title;
  final void Function() onClick;
  final bool isDetails;
  const HomeAppBar(
      {Key? key,
      required this.onClick,
      required this.title,
      this.isDetails = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        height: 79,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                //****************** MenuBtn */
                Padding(
                  padding: const EdgeInsets.only(left: 27),
                  child: InkWell(
                    onTap: onClick,
                    child: SizedBox(
                      width: 18,
                      height: 18,
                      child: SvgPicture.asset(AppAssets.menu),
                    ),
                  ),
                ),
                //**********Page title */
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline3?.copyWith(color: AppColors.black),
                  ),
                ),
                const Spacer(),
              ],
            ),
            //*******Divider */
            Divider()
          ],
        ),
      ),
    );
  }
}
