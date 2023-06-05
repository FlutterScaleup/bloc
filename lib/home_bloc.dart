import 'package:bloc/bloc.dart';
import 'package:flutterbloc/home_state.dart';

class HomeBloc extends Cubit<HomeStateInitial> {
  HomeBloc()
      : super(
            HomeStateInitial(counter: 0, url: 'https://picsum.photos/200/300'));

  void increment() {
    emit(HomeStateInitial(counter: state.counter + 1, url: state.url));
  }

  void decrement() {
    if (state.counter < 1) {
      return;
    }
    emit(HomeStateInitial(counter: state.counter - 1, url: state.url));
  }

  void getImage() => emit(HomeStateInitial(
      counter: state.counter,
      url: 'https://m.media-amazon.com/images/I/514NPRZ1AQL.jpg'));
}
