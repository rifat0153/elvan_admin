import 'package:shared_preferences/shared_preferences.dart';


class LocalData {
  static late Future<SharedPreferences> _prefs;

  static late LocalData _instatance;

  static LocalData getInstatance() {
    _instatance = LocalData._internal();
    _prefs = SharedPreferences.getInstance();
    return _instatance;
  }

  LocalData._internal();



  Future<void> storeOrderByMin(
    {
      required String orderId,
      required DateTime time
    }
  ) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString(orderId, time.toString());
  }
 

  Future<String> getOrderByMin(
    {
      required String orderId,
    }
  ) async {
    final SharedPreferences prefs = await _prefs;
    return  prefs.getString(orderId) ?? DateTime.now().toString();
  }

  Future<bool> removeOrderByMin(
    {
      required String orderId,
    }
  ) async {
    final SharedPreferences prefs = await _prefs;
    return  prefs.remove(orderId);
  }

 

}
