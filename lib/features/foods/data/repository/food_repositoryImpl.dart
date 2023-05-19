import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elvan_admin/core/firebase/firebase_providers.dart';
import 'package:elvan_admin/features/foods/domain/repository/food_repository.dart';
import 'package:elvan_shared/core/failure/failure.dart';
import 'package:elvan_shared/dtos/food/food_item_dto.dart';
import 'package:elvan_shared/core/result/result.dart';
import 'package:elvan_shared/shared/constants/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final foodRepositoryProvider = Provider<FoodRepository>((ref) {
  final firestore = ref.watch(firebaseFirestoreProvider);
  return FoodRepositoryImpl(firebaseFirestore: firestore);
});

class FoodRepositoryImpl implements FoodRepository {
  final FirebaseFirestore firebaseFirestore;
  FoodRepositoryImpl({required this.firebaseFirestore});

  @override
  Future<Result<QuerySnapshot<Map<String, dynamic>>>> getFoods() async {
    try {
      final data = await firebaseFirestore.collection(Constants.firebaseCollectionFoodItems).orderBy('title', descending: true).limit(20).get();

      return Result.success(data);
    } on FirebaseException catch (e) {
      print(e);
      return Result.failure(Failure(
        error: "Error",
        message: e.message,
      ));
    }
  }

  @override
  Future<Result<QuerySnapshot<Map<String, dynamic>>>> getFoodPagination({
    required DocumentSnapshot lastItem,
  }) async {
    try {
      final data = await firebaseFirestore.collection(Constants.firebaseCollectionFoodItems).orderBy('title', descending: true).startAfterDocument(lastItem).limit(10).get();
      return Result.success(data);
    } on FirebaseException catch (e) {
      return Result.failure(Failure(
        error: "Error",
        message: e.message,
      ));
    }
  }

  @override
  Future<Result<String>> setActiveFood(
    String productId,
    bool isActive,
  ) async {
    try {
      await firebaseFirestore.collection(Constants.firebaseCollectionFoodItems).doc(productId).update({"isAvailable": isActive});

      final data = await firebaseFirestore
          .collection(Constants.firebaseCollectionFoodItems)
          .doc(productId)
          .withConverter(
            fromFirestore: (snapshot, _) => FoodItemDto.fromJson(snapshot.data()!),
            toFirestore: (foodItem, _) => foodItem.toJson(),
          )
          .get();

      return Result.success("Item available ${data.data()?.isAvailable}.");
    } on FirebaseException catch (e) {
      print(e);
      return Result.failure(Failure(error: "Error", message: e.message));
    }
  }
}
