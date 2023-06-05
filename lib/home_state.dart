import 'package:flutter/material.dart';

@immutable
abstract class HomeState {}

class HomeStateInitial extends HomeState {
  final int counter;
  final String url;

  HomeStateInitial({required this.counter, required this.url});
}

class HomeStateImage extends HomeState {
  final int counter;
  final String url;

  HomeStateImage({required this.counter, required this.url});
}

class HomeStateError extends HomeState {
  final int counter;
  final String url;

  HomeStateError({required this.counter, required this.url});
}

class HomeStateLoading extends HomeState {
  final int counter;
  final String url;

  HomeStateLoading({required this.counter, required this.url});
}
