import 'package:elvan_admin/features/home/ui/screens/widgets/menu_food.dart';
import 'package:elvan_admin/features/home/ui/screens/widgets/menu_order.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final menuTabProvider = NotifierProvider<MenuTabNotifier, int>(
   MenuTabNotifier.new,
);

class MenuTabNotifier extends Notifier<int> {
  MenuTabNotifier() : super();

 

  @override
  int build() {
    return 0;
  }

  void next(int index) {
    state = index;
  }
}
