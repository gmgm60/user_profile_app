import 'package:injectable/injectable.dart';
import 'package:user_profile_app/features/auth/data/datasources/remote/rest_api.dart';
import 'package:user_profile_app/features/auth/data/models/register_data/register_data.dart';
import 'package:user_profile_app/features/auth/data/models/response/response_model.dart';
import 'package:user_profile_app/features/auth/domain/datasources/remote_data_source.dart';

@Injectable(as: RemoteDataSource)
class RemoteDataSourceImp extends RemoteDataSource {
  final RestApiImp _restApiImp;

  RemoteDataSourceImp(this._restApiImp);

  @override
  Future<ResponseModel> login(
      {required String email, required String password}) {
    return _restApiImp.login(email: email, password: password);
  }

  @override
  Future<ResponseModel> register(
      {required RegisterModelData registerModelData}) {
    return _restApiImp.register(
        registerModelData: registerModelData);
  }

  @override
  Future<dynamic> logout({required String token}) async {
    return await _restApiImp.logout(token: token);
  }
}
