import 'package:elvan_admin/features/foods/data/repository/food_repositoryImpl.dart';
import 'package:elvan_admin/features/foods/domain/repository/food_repository.dart';
import 'package:elvan_shared/core/result/result.dart';
import 'package:elvan_shared/dtos/food/food_item_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'food_usecase.g.dart';

@riverpod
FoodUsecase foodUsecase(FoodUsecaseRef ref) {
  return FoodUsecase(foodRepository: ref.read(foodRepositoryProvider));
}

class FoodUsecase {
  final FoodRepository foodRepository;

  const FoodUsecase({required this.foodRepository});

  Result<Stream<List<FoodItemDto>>> getFoodStream() {
    final resultOrderdro = foodRepository.getFoods();
    return resultOrderdro.when(
      success: (data) {
        return Result.success(data);
      },
      failure: (failure) {
        return Result.failure(failure);
      },
    );
  }
}
