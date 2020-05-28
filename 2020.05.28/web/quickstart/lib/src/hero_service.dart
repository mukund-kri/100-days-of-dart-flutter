import 'package:angular_app/src/hero.dart';
import 'package:angular_app/src/mock.heros.dart';

class HeroService {
  Future<List<Hero>> getAll() async => mockHeroes;
}