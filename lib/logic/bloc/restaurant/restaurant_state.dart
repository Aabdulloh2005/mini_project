part of 'restaurant_bloc.dart';

@immutable
sealed class RestaurantState {}

final class ResInitialState extends RestaurantState {}

final class ResLoadingState extends RestaurantState {}

final class ResLoadedState extends RestaurantState {
  final List<Restaurant> restaurants;

  ResLoadedState({required this.restaurants});
}

final class ResErrorState extends RestaurantState {
  final String errorText;

  ResErrorState({required this.errorText});
}
