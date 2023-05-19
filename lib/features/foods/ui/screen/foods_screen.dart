import 'package:auto_route/annotations.dart';
import 'package:elvan_admin/features/foods/ui/notifier/food_notifier.dart';
import 'package:elvan_admin/features/foods/ui/screen/widgets/add_on_item.dart';
import 'package:elvan_admin/features/order/ui/screens/widgets/empty_widget.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:elvan_shared/domain_models/food/food_item.dart';
import 'package:elvan_shared/dtos/food/food_item_dto.dart';
import 'package:flutter/material.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/shared/components/appbars/home_app_bar.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class FoodsScreen extends HookConsumerWidget {
  const FoodsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuNotifier = ref.watch(menuProvider.notifier);
    final state = ref.watch(foodProvider);
    final notifier = ref.watch(foodProvider.notifier);
    final scrollController = useScrollController();

    useEffect(() {
      scrollController.addListener(() {
        if (scrollController.offset >= scrollController.position.maxScrollExtent && !scrollController.position.outOfRange) {
          notifier.nextData();
        }
      });
      return null;
    }, const []);
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(color: AppColors.white),
      child: Column(
        children: [
          HomeAppBar(
              onClick: () {
                Scaffold.of(context).openDrawer();
                menuNotifier.open();
              },
              title: AppStrings.foodItems),
          Expanded(
              child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                state.loading
                    ? SizedBox(
                        width: AppSize.width(context),
                        height: AppSize.hight(context),
                        child: const Center(
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      )
                    : Container(),
                state.items.isEmpty
                    ? const EmptyWidget(title: AppStrings.noFoodItem, icon: Icons.coffee_maker_outlined)
                    : AddOnItem(
                        foodItems: state.items.map((e) => FoodItem.fromDto(FoodItemDto.fromJson(e.data()!))).toList(),
                      ),
                state.haseMore
                    ? const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : Container()
              ],
            ),
          ))
        ],
      ),
    );
  }
}
