import 'package:elvan_admin/features/foods/domain/usecase/food_usecase.dart';
import 'package:elvan_admin/features/foods/ui/states/food_state.dart';
import 'package:elvan_admin/shared/providers/scaffold_messenger/toast_provider.dart';
import 'package:elvan_shared/domain_models/food/food_item.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final foodProvider = NotifierProvider<FoodNotifier, FoodState>(
  FoodNotifier.new,
);

class FoodNotifier extends Notifier<FoodState> {
  FoodNotifier() : super();

  late FoodUsecase foodUsecase;

  @override
  FoodState build() {
    getData();
    ref.onDispose(() {});

    return const FoodState(
      loading: true,
      items: [],
    );
  }

  getData() async {
    foodUsecase = ref.read(foodUsecaseProvider);

    final result = await foodUsecase.getFoodStream();
    result.when(
      success: (data) {
        state = state.copyWith(loading: false, items: data.docs);
      },
      failure: (failure) {
        state = state.copyWith(loading: false);
      },
    );
  }

  nextData() async {
    state = state.copyWith(haseMore: true, items: state.items);
    final lastItem = state.items[state.items.length - 1];
    final result = await foodUsecase.getFoodStreamPagination(lastItem: lastItem);
    result.when(
      success: (data) {
        state = state.copyWith(loading: false, haseMore: false, items: [...state.items, ...data.docs]);
      },
      failure: (failure) {
        state = state.copyWith(haseMore: false, items: state.items);
      },
    );
  }

  onActice(BuildContext context, FoodItem item, bool isActive) async {
    foodUsecase = ref.read(foodUsecaseProvider);
    final result = await foodUsecase.setActiveFood(itemId: item.id!, isActive: isActive);
    result.when(
      success: (data) {
        ToastNotifer.success(context, data);
        getData();
      },
      failure: (failure) {
        ToastNotifer.error(context, "${failure.message}");
      },
    );
  }
}
