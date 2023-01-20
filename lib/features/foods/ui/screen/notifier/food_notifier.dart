
import 'dart:async';

import 'package:elvan_admin/core/ui_state/ui_state.dart';
import 'package:elvan_admin/features/foods/domain/usecase/food_usecase.dart';
import 'package:elvan_shared/dtos/food/food_item_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final foodProvider =
    NotifierProvider<FoodNotifier, UiState<List<FoodItemDto>>>(
        FoodNotifier.new);

class FoodNotifier extends Notifier<UiState<List<FoodItemDto>>> {
  FoodNotifier() : super();

  late FoodUsecase foodUsecase;
  late final StreamSubscription<List<FoodItemDto>> foodSubscription;

  @override
  UiState<List<FoodItemDto>> build() {
    getData();
    ref.onDispose(() {
      foodSubscription.cancel();
    });

    return const UiState.loading();
  }

  getData() {
    foodUsecase = ref.read(foodUsecaseProvider);

    final result = foodUsecase.getFoodStream();
    result.when(
      success: (data) {
        foodSubscription = data.listen(handleOrderStream);
      },
      failure: (failure) {
        state = UiState.error(failure.message);
      },
    );
  }

  handleOrderStream(List<FoodItemDto> foodDto) {
    state = UiState.data(foodDto);
  }

 
}
