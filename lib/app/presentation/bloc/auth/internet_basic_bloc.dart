import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';

part 'internet_basic_event.dart';
part 'internet_basic_state.dart';

class InternetBasicBloc extends Bloc<InternetBasicEvent, InternetBasicState> {

  final Connectivity _connectivity = Connectivity();

  StreamSubscription? connectivityStreamSubscription;

  InternetBasicBloc() : super(InternetBasicInitial()) {
    on<InternetConnectedEvent>((event, emit) {
      emit(InternetConnectedState());
    });
    on<InternetDisconnectedEvent>((event, emit) {
      emit(InternetDisconnectedState());
    });


    connectivityStreamSubscription =
        _connectivity.onConnectivityChanged.listen((result) {
          if(result == ConnectivityResult.wifi){
            add(InternetConnectedEvent());
          } else{
            add(InternetDisconnectedEvent());
          }



        });
  }
}
