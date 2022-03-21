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

String? validateName (String? input){

  if (input != null && input.length >= 6){

    return null;
  } else {
    return "Name must be more than 6";
  }
}

String? validateAddress (String? input){

  if (input != null && input.length >= 6){

    return null;
  } else {
    return "Address must be more than 6";
  }
}

String? validatePhone(String? input){

  if (input != null && input.length == 11){

    return null;
  } else {
    return "Phone must be more than 11";
  }
}

String? validateAge(String? input){

  if (input != null && input.length ==2){
    final age = int.tryParse(input);
    if (age != null && age >10 && age < 100) {
      return null;
    }else{
      return "age must be number between 10 and 100";
    }
  } else {
    return "Not valid Age ";
  }
}