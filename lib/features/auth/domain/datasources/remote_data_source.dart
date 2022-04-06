import 'package:user_profile_app/features/auth/data/models/register_data/register_data.dart';
import 'package:user_profile_app/features/auth/data/models/response/response_model.dart';

abstract class RemoteDataSource {
  Future<ResponseModel> login({
    required String email,
    required String password,
  });

  Future<ResponseModel> register({
    required RegisterModelData registerModelData
  });

  Future<dynamic>logout({required String token});
}
