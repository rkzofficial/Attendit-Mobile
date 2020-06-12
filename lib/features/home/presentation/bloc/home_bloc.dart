import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(HomeEvent event) async* {
    switch (event) {
      case HomeEvent.decrement:
        yield state - 1;
        break;
      case HomeEvent.increment:
        yield state + 1;
        break;
    }
  }
}
