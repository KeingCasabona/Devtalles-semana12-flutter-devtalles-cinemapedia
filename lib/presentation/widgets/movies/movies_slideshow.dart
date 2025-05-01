import 'package:card_swiper/card_swiper.dart';
import 'package:cinemapedia/domain/entities/movie_model.dart';
import 'package:flutter/material.dart';

class MoviesSlideshow extends StatelessWidget {
  final List<MovieModel> movies;
  const MoviesSlideshow({
    super.key,
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      width: double.infinity,
      child: Swiper(
        viewportFraction: 0.8,
        scale: 0.4,
        itemCount: movies.length,
        itemBuilder: (context, index) => _Slide(movie: movies[index]),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final MovieModel movie;
  const _Slide({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
