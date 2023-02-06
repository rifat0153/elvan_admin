import 'package:elvan_admin/features/order/ui/screens/common_item/common_item_desktop.dart';
import 'package:elvan_admin/features/order/ui/screens/common_item/common_item_tab.dart';
import 'package:elvan_admin/shared/components/responsive/responsive_layout.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_shared/domain_models/order/order.dart';


import 'package:flutter/material.dart';

class ReadyItem extends StatelessWidget {
  final Order order;
  final Order? selectedOrder;
  final void Function() onClick;
  final void Function() onBtnClick;
  const ReadyItem(
      {Key? key,
      required this.order,
      this.selectedOrder,
      required this.onBtnClick,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobile: CommonItemTab(
            order: order,
            selectedOrder: selectedOrder,
            onClick: onClick,
            btnTitle: AppStrings.ready,
            onBtnClick: onBtnClick),
        tablet: CommonItemTab(
            order: order,
            selectedOrder: selectedOrder,
            onClick: onClick,
            btnTitle: AppStrings.ready,
            onBtnClick: onBtnClick),
        desktop: CommonItemDesktop(
            order: order,
            selectedOrder: selectedOrder,
            onClick: onClick,
            btnTitle: AppStrings.ready,
            onBtnClick: onBtnClick),
        smallMobile: CommonItemTab(
            order: order,
            selectedOrder: selectedOrder,
            onClick: onClick,
            btnTitle: AppStrings.ready,
            onBtnClick: onBtnClick));
  }
}
