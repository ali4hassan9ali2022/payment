import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/Featured/checkout/Cubit/app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() :super(InitialAppState());


  int currentIndex = 0;
  void changeStatus(int index) {
    currentIndex = index;
    emit(ChangeStatusAppState());
  } 
}