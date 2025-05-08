import 'package:cinemapedia/domain/entities/movie_model.dart';

abstract class MoviesDatasource {
  Future<List<MovieModel>> getNowPlayingMovies({int page = 1});
  Future<List<MovieModel>> getPopularMovies({int page = 1});
}
