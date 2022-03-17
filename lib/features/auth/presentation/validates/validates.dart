String? validateEmailAddress (String? input){
  const emailRegex =
  r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (input != null && RegExp(emailRegex).hasMatch(input)){

    return null;
  } else {
    return 'Invalid Email Address!';
  }
}

String? validatePassword (String? input){

  if (input != null && input.length >= 6){

    return null;
  } else {
    return "password must be more than 6";
  }


}