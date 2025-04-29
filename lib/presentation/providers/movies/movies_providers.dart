import 'package:cinemapedia/domain/entities/movie_model.dart';
import 'package:cinemapedia/presentation/providers/movies/movies_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nowPlayingMoviesProvider =
    StateNotifierProvider<MovieNotifier, List<MovieModel>>((ref) {
  final fetchMoreMovies =
      ref.watch(movieRepositoryProvider).getNowPlayingMovies;
  return MovieNotifier(
    fetchMoreMovies: fetchMoreMovies,
  );
});

typedef MovieCallback = Future<List<MovieModel>> Function({int page});

class MovieNotifier extends StateNotifier<List<MovieModel>> {
  int currentPage = 0;
  MovieCallback fetchMoreMovies;
  MovieNotifier({required this.fetchMoreMovies}) : super([]);

  Future<void> loadNextPage() async {
    currentPage++;
    final List<MovieModel> movies = await fetchMoreMovies(page: currentPage);
    state = [...state, ...movies];
  }
}
