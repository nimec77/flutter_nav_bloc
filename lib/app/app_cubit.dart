import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppStateInitial());

  void homePage() {
    emit(const AppStateInitial());
  }

  void secondPage() {
    emit(const AppStateSecondPage());
  }

  void thirdPage() {
    emit(const AppStateThirdPage());
  }
}
