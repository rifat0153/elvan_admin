import 'package:collection/collection.dart';
import 'package:elvan_admin/features/order/domain/models/food_item_count.dart';
import 'package:elvan_shared/domain_models/cart/cart_item.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_bottom_notifier.g.dart';

@riverpod
List<FoodItemCount> orderBottom(OrderBottomRef ref, List<Order> orders) {
  List<FoodItemCount> state = [];
  List<CartItem> cartItems = [];
  if (orders.isEmpty) {
    return [];
  }
  for (Order orderItem in orders) {
    cartItems = [...cartItems, ...orderItem.items];
  }
  if (cartItems.isEmpty) {
    return [];
  }

  Map<String, List<CartItem>> newMap = groupBy(cartItems, (CartItem obj) => obj.foodItem.title);
  newMap.forEach((key, value) {
    final int qty = value.fold(0, (sum, element) => sum + element.quantity);

    state.add(FoodItemCount(itemName: key, count: qty));
  });
  return state;
}
