import 'package:elvan_admin/features/order/ui/notifer/order_providers.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomerInfo extends HookConsumerWidget {
  final String userId;
  const CustomerInfo({
    super.key,
    required this.userId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(getCustomerProvider(userId));
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, bottom: 10),
          child: Text(
            AppStrings.customerInfo,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(color: AppColors.gray),
          ),
        ),
        userState.when(
          data: (data) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoItem(
                    title: AppStrings.name,
                    value: data?.name,
                  ),
                  InfoItem(
                    title: AppStrings.email,
                    value: data?.email,
                  ),
                  InfoItem(
                    title: AppStrings.mobile,
                    value: data?.phone,
                  ),
                ],
              ),
            );
          },
          error: (error, stackTrace) => Text("$error"),
          loading: () => Container(
            child: const Text("loading..."),
          ),
        )
      ],
    );
  }
}

class InfoItem extends StatelessWidget {
  final String title;
  final String? value;
  const InfoItem({
    super.key,
    required this.title,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "$title :",
            style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.gray),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "$value",
                style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.gray),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
