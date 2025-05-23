import 'package:cinemapedia/presentation/screens/movies/home_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home-screen',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
