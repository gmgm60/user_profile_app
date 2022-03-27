
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_profile_app/features/auth/domain/datasources/local_data_store.dart';

@Injectable(as: LocaleDataStore)
class LocaleDataStoreImp extends LocaleDataStore{
  // Obtain shared preferences.
 final SharedPreferences _prefs ;
 LocaleDataStoreImp(this._prefs);


@override
  Future<void> saveToken(String token)async{
 // Save an String value to 'action' key.
 await _prefs.setString('token', "Bearer $token");
}

@override
  Future<String?> getToken()async{
// Try reading data from the 'token' key. If it doesn't exist, returns null.
 final String? token = _prefs.getString('token');
 return token;
}

  @override
  Future<void> deleteToken() async{
   await _prefs.remove('token');
  }


}

