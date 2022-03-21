import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/features/auth/domain/entity/user/user.dart';
import 'package:user_profile_app/features/auth/domain/usecases/login.dart';
import 'package:user_profile_app/features/auth/domain/usecases/register.dart';

import 'login_cubit_state.dart';

@Singleton()
class LoginCubit extends Cubit<LoginCubitState> {
  final Login _login;
  final Register _register;
  String email = "gmgm@g.g";
  String password = "123456";
  User user = User(id: "", email: "", name: "", token: "");

  LoginCubit(this._login, this._register) : super(LoginCubitState.init());

  void editEmail(String email) {
    this.email = email;
  }

  void editPassword(String password) {
    this.password = password;
  }

  Future<void> login() async {
    print("cubit login");
    emit(LoginCubitState.loading());
    print(state);
    final LoginData loginData = LoginData(email: email, password: password);
    final result = await _login(loginData);

    result.fold((failure) {
      print("faild");
      emit(LoginCubitState.error());
    }, (user) {
      this.user = user;
      emit(LoginCubitState.done(user: user));
    });
  }

  Future<void> register() async {
    print("cubit register");
    emit(LoginCubitState.loading());

    final RegisterData registerData =
        RegisterData(email: email, password: password);
    final result = await _register(registerData);

    result.fold((failure) => emit(LoginCubitState.error()), (user) {
      this.user = user;
      emit(LoginCubitState.done(user: user));
    });
  }
}
