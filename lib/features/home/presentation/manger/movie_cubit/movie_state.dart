part of 'movie_cubit.dart';

@immutable
sealed class MovieState {}

final class MovieInitial extends MovieState {}

final class MovieLoading extends MovieState {}

final class MovieSuccess extends MovieState {}

final class MovieFailure extends MovieState {
  final String message;

  MovieFailure({required this.message});
}
