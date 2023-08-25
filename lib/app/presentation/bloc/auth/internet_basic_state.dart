part of 'internet_basic_bloc.dart';


@immutable

abstract class InternetBasicState {}

class InternetBasicInitial extends InternetBasicState {}

class InternetConnectedState extends InternetBasicState {}

class InternetDisconnectedState extends InternetBasicState {}
