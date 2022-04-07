
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'localization_state.freezed.dart';

@Freezed()
class LocalizationState with _$LocalizationState{
  factory LocalizationState.init() = _Init;
  factory LocalizationState.changeLocale(Locale locale) = ChangeLocale;
}

