import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

import '../model/hero.dart';

class HeroService {
  static const _heroesUrl = 'http://192.168.43.250:8888/heroes';
  static final _headers = {'Content-Type': 'application/json'};
  final Client _http = Client();

  dynamic _extractData(Response response) => json.decode(response.body);

  Future<List<Hero>> getAll() async {
    try {
      final response = await _http.get(_heroesUrl);
      final heroes = (_extractData(response) as List)
          .map((json) => Hero.fromJson(json))
          .toList();
      return heroes;
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Hero> get(int id) async {
    try {
      final response = await _http.get('$_heroesUrl/$id');
      return Hero.fromJson(_extractData(response));
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Hero> update(Hero hero) async {
    try {
      final url = '$_heroesUrl/${hero.id}';
      final response =
        await _http.put(url, headers: _headers, body: json.encode(hero));
      return Hero.fromJson(_extractData(response)[0]);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<Hero> create(String name) async {
    try {
      final response = await _http.post(_heroesUrl,
          headers: _headers, body: json.encode({'name': name}));
      return Hero.fromJson(_extractData(response));
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<void> delete(int id) async {
    try {
      final url = '$_heroesUrl/$id';
      await _http.delete(url, headers: _headers);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Exception _handleError(dynamic e) {
    print(e);
    return Exception('Server error; cause: $e');
  }
}
