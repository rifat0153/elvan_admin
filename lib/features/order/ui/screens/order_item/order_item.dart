import 'package:elvan_admin/features/order/ui/screens/order_item/order_item_tab.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/order_item_desktop.dart';
import 'package:elvan_admin/shared/components/responsive/responsive_layout.dart';

import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  final int index;
  final int? selectedInedx;
  final void Function() onClick;
  const OrderItem(
      {Key? key,
      required this.index,
      this.selectedInedx,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobile: OrderItemTab(
            index: index, selectedInedx: selectedInedx, onClick: onClick),
        tablet: OrderItemTab(
            index: index, selectedInedx: selectedInedx, onClick: onClick),
        desktop: OrderItemDesktop(
            index: index, selectedInedx: selectedInedx, onClick: onClick),
        smallMobile: OrderItemTab(
            index: index, selectedInedx: selectedInedx, onClick: onClick));
  }
}
