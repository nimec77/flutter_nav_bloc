part of 'second_cubit.dart';

@immutable
abstract class SecondState {
  const SecondState();
}

@immutable
class SecondStateInitial extends SecondState {
  const SecondStateInitial();

  @override
  String toString() => 'SecondInitial';
}

@immutable
class SecondStateFirst extends SecondState {
  const SecondStateFirst();

  @override
  String toString() => 'SecondFirst';
}

@immutable
class SecondStateSecond extends SecondState {
  const SecondStateSecond();

  @override
  String toString() => 'SecondSecond';
}
