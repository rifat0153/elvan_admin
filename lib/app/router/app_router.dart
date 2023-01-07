import 'package:auto_route/annotations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appRouterProvider = Provider.autoDispose<AppRouter>((ref) {
  return AppRouter();
});

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[],
)
class $AppRouter {}
