import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elvan_admin/features/foods/data/repository/food_repositoryImpl.dart';
import 'package:elvan_admin/features/foods/domain/repository/food_repository.dart';
import 'package:elvan_shared/core/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'food_usecase.g.dart';

@riverpod
FoodUsecase foodUsecase(FoodUsecaseRef ref) {
  return FoodUsecase(foodRepository: ref.read(foodRepositoryProvider));
}

class FoodUsecase {
  final FoodRepository foodRepository;

  const FoodUsecase({required this.foodRepository});

  Future<Result<QuerySnapshot<Map<String, dynamic>>>> getFoodStream() async {
    final resultOrderdto = await foodRepository.getFoods();

    return resultOrderdto.when(
      success: (data) {
        return Result.success(data);
      },
      failure: (failure) {
        return Result.failure(failure);
      },
    );
  }

  Future<Result<QuerySnapshot<Map<String, dynamic>>>> getFoodStreamPagination({
    required DocumentSnapshot lastItem,
  }) async {
    final resultOrderdro = await foodRepository.getFoodPagination(lastItem: lastItem);

    return resultOrderdro.when(
      success: (data) {
        return Result.success(data);
      },
      failure: (failure) {
        return Result.failure(failure);
      },
    );
  }

  Future<Result<String>> setActiveFood({
    required String itemId,
    required bool isActive,
  }) {
    return foodRepository.setActiveFood(itemId, isActive);
  }
}
