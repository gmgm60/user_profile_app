import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile_app/features/auth/domain/usecases/get_token.dart';
import 'package:user_profile_app/features/auth/domain/usecases/register.dart';
import 'register_state.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  final GetToken _getToken;
  final Register _register;
  String name = "gmgm";
  String email = "gmgm@g.g";
  String password = "123456";
 // User user = User(id: -1, email: "", name: "", token: "");

  RegisterCubit(this._register, this._getToken)
      : super(RegisterState.init());

  void editName(String name) {
    this.name = name;
  }

  void editEmail(String email) {
    this.email = email;
  }

  void editPassword(String password) {
    this.password = password;
  }

  Future<void> register() async {
    print("cubit start register $state");
    emit(RegisterState.loading());
    print("cubit start $state");

    final RegisterData registerData =
        RegisterData(email: email, password: password, name: name);
    final result = await _register(registerData);

    result.fold((failure) => emit(RegisterState.error(failure.error.toString())),
        (user) {
     // this.user = user;
      emit(RegisterState.done());
    });
    print("cubit start $state");

  }

  // Future<void> isRegister() async {
  //   final result = await _getToken(NoParams());
  //   result.fold((error) {
  //     emit(RegisterState.error(error.toString()));
  //   }, (token) {
  //     if (token != null) {
  //       emit(RegisterState.done());
  //     }
  //   });
  // }


}
