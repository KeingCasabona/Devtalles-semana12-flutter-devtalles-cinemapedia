import 'package:animate_do/animate_do.dart';
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
        scale: 0.8,
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
    final decoration =
        BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.5),
        offset: const Offset(5, 5),
        blurRadius: 10,
      ),
    ]);
    return Padding(
      padding: EdgeInsets.only(bottom: 30.0),
      child: DecoratedBox(
        decoration: decoration,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            movie.backdropPath,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress != null) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                  ),
                );
              }
              return FadeIn(child: child);
            },
          ),
        ),
      ),
    );
  }
}
