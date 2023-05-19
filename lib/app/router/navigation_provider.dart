import 'package:elvan_admin/app/router/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final navigatorProvider = NotifierProvider<NavigatorNotifier, void>(() {
  return NavigatorNotifier();
});

class NavigatorNotifier extends Notifier<void> {
  late final AppRouter _router;

  @override
  build() {
    _router = ref.read(appRouterProvider);
    return;
  }

  void pop() {
    _router.pop();
  }

  void pushRoute(String route) {
    _router.pushNamed(route);
  }

  void popAllPushTabRoute() {
    _router.popUntilRoot();
    _router.pushNamed('/');
  }

  void popAllLogout() {
    _router.popUntilRoot();
    _router.pushNamed('/login');
  }
}
