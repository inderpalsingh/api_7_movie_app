import 'dart:convert';
import 'dart:io';

import 'package:api_7_movie_app/data/remote/movie_base_url.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../../utils/api_exceptions.dart';

class MoviesApiHelper {
  Future<dynamic> getMovies() async {
    DotEnv dotEnv = DotEnv();
    final apiKey = dotEnv.get('API_KEY').toString();

    try {
      http.Response response = await http.get(Uri.parse(MoviesApiUrls.baseUrl), headers: {
        'x-rapidapi-host': 'imdb-top-100-movies.p.rapidapi.com',
        'x-rapidapi-key': apiKey
      });
      return returnJsonResponse(response);
    } on SocketException catch (e) {
      throw (FetchDataExecption(errorMsg: 'No Internet \n$e'));
    }
  }

  /// create function Exception handling
  dynamic returnJsonResponse(http.Response jsonResponse) {
    switch (jsonResponse.statusCode) {
      case 200:
        var mData = jsonDecode(jsonResponse.body);
        return mData;

      case 400:
        throw BadRequestException(errorMsg: jsonResponse.body.toString());

      case 401:
        throw UnauthorisedException(errorMsg: jsonResponse.body.toString());

      case 500:
        throw UnauthorisedException(errorMsg: jsonResponse.body.toString());

      default:
        throw '${jsonResponse.statusCode}';
    }
  }
}
