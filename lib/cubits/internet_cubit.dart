//if no data in class u can use enum like this

import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum InternetState {Initial , Gained , Lost}
  Connectivity _connectivity = Connectivity();
  StreamSubscription? connnectivityStream;
class InternetCubit extends Cubit<InternetState>{
  InternetCubit():super(InternetState.Initial){

    connnectivityStream = _connectivity.onConnectivityChanged.listen((result) { 
      if(result == ConnectivityResult.mobile || result == ConnectivityResult.wifi){
        emit(InternetState.Gained);
      }else{
        emit(InternetState.Lost);
      }
    });

  }

  @override
  Future<void> close() {
    connnectivityStream?.cancel();
    return super.close();
  }
}
