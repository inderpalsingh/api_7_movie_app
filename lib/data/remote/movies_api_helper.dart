import 'package:api_7_movie_app/data/remote/movie_base_url.dart';
import 'package:http/http.dart' as http;

Future<dynamic> getMovies() async {



  try{

    http.Response response = await http.get(Uri.parse(MoviesApiUrls.baseUrl),headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'x-rapidapi-host': 'imdb-top-100-movies.p.rapidapi.com',
      'x-rapidapi-key': '622dc53103msh72855a54179c62dp1d763cjsn8f39c53bad60'


    });
  }



}