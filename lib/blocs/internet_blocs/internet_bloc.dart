// import 'dart:async';

// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter0bloc/blocs/internet_blocs/interent_event.dart';
// import 'package:flutter0bloc/blocs/internet_blocs/internet_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class InterentBloc extends Bloc<InternetEvent, InterentState> {
//   final Connectivity _connectivity = Connectivity();
//   StreamSubscription? connectivitySubscription;

//   InterentBloc() : super(InternetInitialState()) {
//     on<InterentLostEvent>((event, emit) => emit(InternetLostState()));
//     on<InterentGainedEvent>((event, emit) => emit(InternetGainedState()));

//     connectivitySubscription =
//         _connectivity.onConnectivityChanged.listen((event) {
//       if (event == ConnectivityResult.mobile ||
//           event == ConnectivityResult.wifi) {
//         add(InterentGainedEvent());
//       } else {
//         add(InterentLostEvent());
//       }
//     });
//   }

//   @override
//   Future<void> close() {
//     connectivitySubscription?.cancel();
//     return super.close();
//   }
// }
