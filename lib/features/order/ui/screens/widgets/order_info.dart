import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elvan_admin/core/extensions/timestamp/timestamp_json_converter.dart';
import 'package:elvan_admin/features/auth/domain/usecase/auth_usecases.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/order_info_widget.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_shared/domain_models/elvan_user/elvan_user.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderInfo extends HookConsumerWidget {
  final OrderDto order;
  const OrderInfo({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userCase = ref.watch(authUseCaseProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 2,
          child: FutureBuilder<ElvanUser?>(
              future: userCase.getOrderedUser(userId: order.userId),
              builder: (context, AsyncSnapshot<ElvanUser?> snapshot) {
                return OrderInfoWidget(
                  title:  AppStrings.nameAndPhone,
                  value: snapshot.hasData ? "${snapshot.data?.name} ${snapshot.data?.address}" : "",
                );
              }),
        ),
        Flexible(
          flex: 2,
          child: OrderInfoWidget(
            title: AppStrings.orderedTime,
            value: "${TimestampConverter.moment(order.createdAt)}",
          ),
        ),
        Flexible(
          flex: 2,
          child: OrderInfoWidget(
            title: AppStrings.amount,
            value: "${AppStrings.dollar} ${order.total}",
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
