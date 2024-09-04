part of 'bottomnavigation_bloc.dart';

sealed class BottomNavigationEvent {}

class ChangeBottomNavigationEvent extends BottomNavigationEvent {
  final int index;

  ChangeBottomNavigationEvent(this.index);
}
