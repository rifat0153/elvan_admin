import 'package:elvan_admin/features/order/ui/screens/order_item/order_item_m.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/order_item_s.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/order_item_sl.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/order_item_x.dart';
import 'package:elvan_admin/features/order/ui/screens/order_item/order_item_xl.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
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
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.minWidth > 906 && constraints.maxWidth < 1000) {
          return OrderItemX(
              index: index, selectedInedx: selectedInedx, onClick: onClick);
        } 
       else if (constraints.maxWidth> 720 && constraints.maxWidth < 906) {
          return OrderItemM(
              index: index, selectedInedx: selectedInedx, onClick: onClick);
        } 
       else if ( constraints.minWidth > 600 && constraints.maxWidth < 720) {
          return OrderItemS(
              index: index, selectedInedx: selectedInedx, onClick: onClick);
        } 
       else if ( constraints.maxWidth < 600) {
          return OrderItemSL(
              index: index, selectedInedx: selectedInedx, onClick: onClick);
        } 
        
        else {
        return OrderItemXL(
            index: index, selectedInedx: selectedInedx, onClick: onClick);

        }
      },
    );
  }
}
