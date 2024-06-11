import 'package:api_7_movie_app/data/models/movies_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {

  MoviesBloc() : super(MoviesInitialState()) {
    on<MoviesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
