import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroment {
  static String theMovieDbApiKey =
      dotenv.env['THE_MOVIEDB_API_KEY'] ?? 'No API Key';
}
