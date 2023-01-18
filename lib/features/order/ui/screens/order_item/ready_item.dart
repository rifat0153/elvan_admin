import 'package:elvan_admin/features/order/ui/screens/common_item/common_item_desktop.dart';
import 'package:elvan_admin/features/order/ui/screens/common_item/common_item_tab.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/order_item_tab.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/order_item_desktop.dart';
import 'package:elvan_admin/shared/components/responsive/responsive_layout.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';

import 'package:flutter/material.dart';

class ReadyItem extends StatelessWidget {
  final int index;
  final int? selectedInedx;
  final void Function() onClick;
  const ReadyItem(
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
            btnTitle: AppStrings.ready,
            onBtnClick: () {}),
        tablet: CommonItemTab(
            index: index,
            selectedInedx: selectedInedx,
            onClick: onClick,
            btnTitle: AppStrings.ready,
            onBtnClick: () {}),
        desktop: CommonItemDesktop(
            index: index,
            selectedInedx: selectedInedx,
            onClick: onClick,
            btnTitle: AppStrings.ready,
            onBtnClick: () {}),
        smallMobile: CommonItemTab(
            index: index,
            selectedInedx: selectedInedx,
            onClick: onClick,
            btnTitle: AppStrings.ready,
            onBtnClick: () {}));
  }
}
