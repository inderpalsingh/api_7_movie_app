
import 'package:api_7_movie_app/data/remote/movies_api_helper.dart';

class MovieRepository{
  MoviesApiHelper moviesApiHelper;

  MovieRepository({required this.moviesApiHelper});

  Future<dynamic> getMovieRepository()async{

    try{
      return await moviesApiHelper.getMovies();
    }catch (e){
      throw(e);
    }
  }

}