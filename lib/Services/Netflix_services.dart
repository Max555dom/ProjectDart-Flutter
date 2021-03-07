import 'dart:convert';
import 'package:formation/Models/netflix.dart';
import 'package:http/http.dart' as http;

class NetflixService {
  Future getNetflixApi() async {
    final response = await http
        .get('https://api.reelgood.com/v3.0/content/random?sources=netflix');

    if (response.statusCode == 200) {
      dynamic data = json.decode(response.body);

      if (data['season_count'] == 0) {
        return Netflix(
            data['id'],
            data['title'],
            data['slug'],
            data['overview'],
            'Movie',
            'https://img.reelgood.com/content/movie/${data['id']}/poster-780.jpg');
      } else {
        return Netflix(
            data['id'],
            data['title'],
            data['slug'],
            data['overview'],
            data['season_count'],
            'https://img.reelgood.com/content/show/${data['id']}/poster-780.jpg');
      }
    }
  }
}
