part of 'app_cubit.dart';

abstract class AppState {
  const AppState();
}

@immutable
class AppStateInitial extends AppState {
  const AppStateInitial();

  @override
  String toString() => 'AppStateInitial';
}

@immutable
class AppStateSecondPage extends AppState {
  const AppStateSecondPage();

  @override
  String toString() => 'AppStateSecondPage';
}

@immutable
class AppStateThirdPage extends AppState {
  const AppStateThirdPage();

  @override
  String toString() => 'AppThirdPage';
}
