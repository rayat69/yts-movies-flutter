import 'dart:convert';

import 'package:ytsmovies/models/movie.dart';
import 'package:ytsmovies/models/movie_data.dart';

class Spawn {
  static const _movieId = 'movieId';

  static Future<List<Movie>> parseDatabaseMovies(
      Map<String, dynamic> data) async {
    final movies = data['movies'] as List;
    final torrents = data['torrents'] as List;
    final genres = data['genres'] as List;

    return movies.map((movie) {
      var newMovie = {}..addAll(movie);
      newMovie['torrents'] =
          torrents.where((t) => t[_movieId] == newMovie['id']).toList();
      newMovie['genres'] = genres
          .where((g) => g[_movieId] == newMovie['id'])
          .map((g) => g['genre'])
          .toList();
      return Movie.fromJSON(newMovie);
    }).toList();
  }

  static List<Movie> parseMovies(List movies) {
    return movies.map((e) => Movie.fromJSON(e)).toList();
  }

  static Map<String, dynamic> decodeJson(String body) => jsonDecode(body);

  static MovieData parseRawBody(String body) {
    final respData = jsonDecode(body);
    final data = respData['data'];
    return MovieData.fromJSON(data);
  }
}
