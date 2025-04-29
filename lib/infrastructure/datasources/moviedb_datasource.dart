import 'package:cinemapedia/config/constants/enviroment.dart';
import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie_model.dart';
import 'package:dio/dio.dart';

class MoviedbDatasource extends MoviesDatasource {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3',
    queryParameters: {
      'api_key': Enviroment.theMovieDbApiKey,
      'language': 'es-ES',
    },
  ));

  Future<List<MovieModel>> getNowPlayingMovies({int page = 1}) async {
    final response = await dio.get('/movie/now_playing');

    final List<MovieModel> movies = [];
    return movies;
  }
}
