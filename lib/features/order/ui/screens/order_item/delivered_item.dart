import 'package:elvan_admin/features/order/ui/screens/common_item/common_item_desktop.dart';
import 'package:elvan_admin/features/order/ui/screens/common_item/common_item_tab.dart';
import 'package:elvan_admin/shared/components/responsive/responsive_layout.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';

import 'package:flutter/material.dart';

class DeliveredItem extends StatelessWidget {
  final int index;
  final int? selectedInedx;
  final void Function() onClick;
  const DeliveredItem(
      {Key? key,
      required this.index,
      this.selectedInedx,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobile: CommonItemTab(
            index: index,
            selectedInedx: selectedInedx,
            onClick: onClick,
            btnTitle: AppStrings.delivered,
            onBtnClick: () {}),
        tablet: CommonItemTab(
            index: index,
            selectedInedx: selectedInedx,
            onClick: onClick,
            btnTitle: AppStrings.delivered,
            onBtnClick: () {}),
        desktop: CommonItemDesktop(
            index: index,
            selectedInedx: selectedInedx,
            onClick: onClick,
            btnTitle: AppStrings.delivered,
            onBtnClick: () {}),
        smallMobile: CommonItemTab(
            index: index,
            selectedInedx: selectedInedx,
            onClick: onClick,
            btnTitle: AppStrings.delivered,
            onBtnClick: () {}));
  }
}
