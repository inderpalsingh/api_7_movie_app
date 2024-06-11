import 'package:api_7_movie_app/data/models/movies_model.dart';
import 'package:api_7_movie_app/utils/api_exceptions.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/repository/movie_repository.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {

  MovieRepository movieRepository;

  MoviesBloc({required this.movieRepository}) : super(MoviesInitialState()) {
    on<MoviesEventInitial>((event, emit) async{
      emit(MoviesLoadingState());

      try{
        var responseJson = await movieRepository.getMovieRepository();
        if(responseJson !=null ){
          var responseData = MoviesModel.fromJSON(responseJson);
          emit(MoviesSuccessState(moviesModel: responseData));
        }
      }catch (e){
        emit(MoviesErrorState(errorMsg: (e as ApiExceptions).toString()));
      }

    });
  }
}
