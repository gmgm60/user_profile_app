import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/core/usecases/usecase.dart';
import 'package:user_profile_app/features/auth/domain/usecases/get_token.dart';
import 'package:user_profile_app/features/auth/domain/usecases/logout.dart';
import 'auth_state.dart';

@Injectable()
class AuthCubit extends Cubit<AuthState> {
  final GetToken _getToken;
  final Logout _logout;
  StreamController? _streamController;

  AuthCubit(this._getToken, this._logout) : super(AuthState.init());

  Future<void> isLogin() async {
    final result = await _getToken(NoParams());
    result.fold((error) {
      emit(AuthState.error(error.toString()));
    }, (token) {
      if (token != null) {
        print("saved token is : $token");
        emit(AuthState.login());
      } else {
        print("no token");
        emit(AuthState.logout());
      }
    });
  }

  Future<void> logout() async {
    emit(AuthState.loading());
    final result = await _logout(NoParams());
    result.fold(
      (error) => emit(AuthState.error(error.toString())),
      (unit) =>  emit(AuthState.logout()),
    );

  }
  @override
  Future<void> close() {
    _streamController?.close();
    return super.close();
  }
}
