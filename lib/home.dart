import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutterbloc/home_bloc.dart';
import 'package:flutterbloc/home_state.dart';

class Home extends StatelessWidget {
  final homeController = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeStateInitial>(builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times: ${state.counter}',
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<HomeBloc>(context).increment();
              },
              child: Text('Add'),
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<HomeBloc>(context).decrement();
              },
              child: Text('Decrease'),
            ),
            Image.network(state.url),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<HomeBloc>(context).getImage();
              },
              child: Text('Get Image'),
            ),
          ],
        );
      }),
    );
  }
}
