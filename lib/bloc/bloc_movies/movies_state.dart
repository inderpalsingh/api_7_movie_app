part of 'movies_bloc.dart';

@immutable
sealed class MoviesState {}

class MoviesInitialState extends MoviesState {}
class MoviesLoadingState extends MoviesState {}
class MoviesSuccessState extends MoviesState {
  MoviesModel moviesModel;
  MoviesSuccessState({required this.moviesModel});
}
class MoviesErrorState extends MoviesState {
  String errorMsg;

  MoviesErrorState({required this.errorMsg});

}
