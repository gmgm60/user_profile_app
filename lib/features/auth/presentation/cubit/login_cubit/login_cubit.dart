import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/features/auth/domain/usecases/login.dart';
import 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final Login _login;
  String email = "mohamed@gamal.com";
  String password = "123456";

  LoginCubit(this._login) : super(LoginState.init());

  void editEmail(String email) {
    this.email = email;
  }

  void editPassword(String password) {
    this.password = password;
  }

  Future<void> login() async {
    print("cubit login");
    emit(LoginState.loading());
    print(state);
    final LoginData loginData = LoginData(email: email, password: password);
    final result = await _login(loginData);

    result.fold((failure) {
      print("faild");
      emit(LoginState.error(failure.error.toString()));
    }, (user) {
      emit(LoginState.done());
    });
  }

}
