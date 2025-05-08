import 'package:cinemapedia/domain/entities/movie_model.dart';

abstract class MoviesRepositories {
  Future<List<MovieModel>> getNowPlayingMovies({int page = 1});
  Future<List<MovieModel>> getPopularMovies({int page = 1});
  Future<List<MovieModel>> getUpcomingMovies({int page = 1});
  Future<List<MovieModel>> getTopRatedMovies({int page = 1});
}
