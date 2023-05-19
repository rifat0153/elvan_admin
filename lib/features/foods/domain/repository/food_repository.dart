import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elvan_shared/core/result/result.dart';

abstract class FoodRepository {
  Future<Result<QuerySnapshot<Map<String, dynamic>>>> getFoods();
  
  Future<Result<String>> setActiveFood(String productId, bool isActive);
  
  Future<Result<QuerySnapshot<Map<String, dynamic>>>> getFoodPagination({
    required DocumentSnapshot lastItem,
  });
}
