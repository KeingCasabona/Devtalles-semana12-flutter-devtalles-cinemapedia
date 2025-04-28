import 'package:cinemapedia/domain/entities/movie_model.dart';

abstract class MoviesRepositories {
  Future<List<MovieModel>> getNowPlayingMovies({int page = 1});
}
