import 'package:elvan_admin/features/order/ui/screens/common_item/common_item_desktop.dart';
import 'package:elvan_admin/features/order/ui/screens/common_item/common_item_tab.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/order_item_tab.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/order_item_desktop.dart';
import 'package:elvan_admin/shared/components/responsive/responsive_layout.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';

import 'package:flutter/material.dart';

class ProcessItem extends StatelessWidget {
  final OrderDto order;
  final OrderDto? selectedOrder;
  final void Function() onClick;
  final void Function() onBtnClick;
  const ProcessItem(
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
            btnTitle: AppStrings.processing,
            onBtnClick: onBtnClick),
        tablet: CommonItemTab(
            order: order,
            selectedOrder: selectedOrder,
            onClick: onClick,
            btnTitle: AppStrings.processing,
            onBtnClick: onBtnClick),
        desktop: CommonItemDesktop(
            order: order,
            selectedOrder: selectedOrder,
            onClick: onClick,
            btnTitle: AppStrings.processing,
            onBtnClick: onBtnClick),
        smallMobile: CommonItemTab(
            order: order,
            selectedOrder: selectedOrder,
            onClick: onClick,
            btnTitle: AppStrings.processing,
            onBtnClick: onBtnClick));
  }
}
