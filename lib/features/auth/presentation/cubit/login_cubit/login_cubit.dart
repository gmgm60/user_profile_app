import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/core/usecases/usecase.dart';
import 'package:user_profile_app/features/auth/domain/usecases/get_token.dart';
import 'package:user_profile_app/features/auth/domain/usecases/login.dart';
import 'login_cubit_state.dart';

@injectable
class LoginCubit extends Cubit<LoginCubitState> {
  final GetToken _getToken;
  final Login _login;
  String email = "gmgm@g.g";
  String password = "123456";
 // User user = User(id: -1, email: "", name: "", token: "");

  LoginCubit(this._login, this._getToken) : super(LoginCubitState.init());

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
      emit(LoginCubitState.error(failure.toString()));
    }, (user) {
      emit(LoginCubitState.done());
    });
  }

Future<void> isLogin()async{
final result =await _getToken(NoParams());
result.fold((error) {
  emit(LoginCubitState.error(error.toString()));
}, (token) {
  if(token != null) {
    print("saved token is : $token");

    emit(LoginCubitState.done());
  }
});
}

  void logout() {

  }
}
