part of 'internet_basic_bloc.dart';

@immutable

abstract class InternetBasicEvent {}

class InternetConnectedEvent extends InternetBasicEvent {}

class InternetDisconnectedEvent extends InternetBasicEvent {}