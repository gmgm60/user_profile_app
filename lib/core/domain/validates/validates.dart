import 'package:flutter/cupertino.dart';
import 'package:user_profile_app/app_localizations.dart';

String? validateEmailAddress (String? input,BuildContext context){
  const emailRegex =
  r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (input != null && RegExp(emailRegex).hasMatch(input)){

    return null;
  } else {
    return context.translate.invalidEmailAddress;
  }
}

String? validatePassword (String? input,BuildContext context){

  if (input != null && input.length >= 6){

    return null;
  } else {
      return context.translate.passwordValidate;
  }
}

String? validateName (String? input,BuildContext context){

  if (input != null && input.length >= 6){

    return null;
  } else {
    return context.translate.nameValidate;
  }
}

String? validateAddress (String? input,BuildContext context){

  if (input != null && input.length >= 6){

    return null;
  } else {
    return context.translate.addressValidate;
  }
}

String? validatePhone(String? input,BuildContext context){

  if (input != null && input.length == 11){

    return null;
  } else {
    return context.translate.phoneValidate;
  }
}

String? validateAge(String? input,BuildContext context){

  if (input != null && input.length ==2){
    final age = int.tryParse(input);
    if (age != null && age >10 && age < 100) {
      return null;
    }else{
      return context.translate.ageValidateLimits;
    }
  } else {
    return context.translate.ageValidate;
  }
}