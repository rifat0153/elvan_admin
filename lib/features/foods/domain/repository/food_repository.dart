import 'package:elvan_shared/core/result/result.dart';
import 'package:elvan_shared/dtos/food/food_item_dto.dart';

abstract class FoodRepository {
  Result<Stream<List<FoodItemDto>>> getFoods();
  Result<void> setActiveFood(String productId);
}
