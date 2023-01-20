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
  Result<Stream<List<FoodItemDto>>> getFoods() {
    try {
      Stream<List<FoodItemDto>> data = firebaseFirestore
          .collection(Constants.firebaseCollectionFoodItems)
          .withConverter(
            fromFirestore: (snapshot, _) =>
                FoodItemDto.fromJson(snapshot.data()!),
            toFirestore: (foodDto, _) => foodDto.toJson(),
          )
          .snapshots()
          .map(
            (event) => event.docs
                .map(
                  (e) => e.data(),
                )
                .toList(),
          );
      return Result.success(data);
    } on FirebaseException catch (e) {
      return Result.failure(Failure(error: "Error", message: e.message));
    }
  }

  @override
  Result<void> setActiveFood(String productId) {
    // TODO: implement setActiveFood
    throw UnimplementedError();
  }
}
