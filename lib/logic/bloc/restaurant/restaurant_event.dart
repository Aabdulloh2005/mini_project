part of 'restaurant_bloc.dart';

@immutable
sealed class RestaurantEvent {}

final class GetResEvent extends RestaurantEvent {}
