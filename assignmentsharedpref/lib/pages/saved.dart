import 'package:shared_preferences/shared_preferences.dart';

class SavedData {
 SharedPreferences? prefs;
  String datakey = 'ToDo Data';

  Future initt() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future setData(data) async {
    await prefs!.setString(datakey, data);
  }

  Future getData() async {
    prefs!.getString(datakey);
  }
}
