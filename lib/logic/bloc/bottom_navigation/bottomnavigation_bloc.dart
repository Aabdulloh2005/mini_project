import 'package:bloc/bloc.dart';

part 'bottomnavigation_event.dart';
part 'bottomnavigation_state.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(BottomNavigationState(0)) {
    on<ChangeBottomNavigationEvent>((event, emit) {
      emit(BottomNavigationState(event.index));
    });
  }
}
