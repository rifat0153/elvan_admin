import 'package:elvan_admin/features/order/ui/screens/common_item/common_item.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:flutter/material.dart';

class ProcessItem extends StatelessWidget {
  final Order order;
  final Order? selectedOrder;
  final void Function() onClick;
  final void Function() onBtnClick;
  const ProcessItem({Key? key, required this.order, this.selectedOrder, required this.onBtnClick, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonItem(order: order, selectedOrder: selectedOrder, onClick: onClick, btnTitle: AppStrings.processing, onBtnClick: onBtnClick);
  }
}
