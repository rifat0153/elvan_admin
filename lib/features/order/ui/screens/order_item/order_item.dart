import 'package:elvan_admin/features/order/ui/screens/order_item/order_item_tab.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/order_item_desktop.dart';
import 'package:elvan_admin/shared/components/responsive/responsive_layout.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  final Order order;
  final Order? selectedOrder;
  final void Function() onClick;
  const OrderItem(
      {Key? key,
      required this.order,
      this.selectedOrder,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobile: OrderItemTab(
            order: order, selectedOrder: selectedOrder, onClick: onClick),
        tablet: OrderItemTab(
            order: order, selectedOrder: selectedOrder, onClick: onClick),
        desktop: OrderItemDesktop(
            order: order, selectedOrder: selectedOrder, onClick: onClick),
        smallMobile: OrderItemTab(
            order: order, selectedOrder: selectedOrder, onClick: onClick));
  }
}
