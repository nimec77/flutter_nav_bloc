import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'second_state.dart';

class SecondCubit extends Cubit<SecondState> {
  SecondCubit() : super(const SecondStateInitial());

  void secondHomePage() {
    emit(const SecondStateInitial());
  }

  void secondFirstPage() {
    emit(const SecondStateFirst());
  }

  void secondSecondPage() {
    emit(const SecondStateSecond());
  }
}
