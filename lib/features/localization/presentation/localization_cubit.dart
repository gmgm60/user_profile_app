import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'localization_state.dart';

@injectable
class LocalizationCubit extends Cubit<LocalizationState> {
  Locale locale = const Locale("en");
  LocalizationCubit() : super(LocalizationState.init());

  void changeLocale (Locale locale){
    emit(LocalizationState.init());
    this.locale = locale;
    emit(LocalizationState.changeLocale(locale));
  }
}
