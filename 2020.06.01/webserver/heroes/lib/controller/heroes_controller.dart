import 'dart:async';

import 'package:aqueduct/aqueduct.dart';
import 'package:heroes/heroes.dart';

import 'package:heroes/model/hero.dart';


class HeroesController extends ResourceController {

  HeroesController(this.context);

  final ManagedContext context;

  @Operation.get()
  Future<Response> getAllHeroes() async {
    final heroQuery = Query<Hero>(context);
    final heroes = await heroQuery.fetch();

    return Response.ok(heroes);
  }

  @Operation.get('id')
  Future<Response> getHeroById(@Bind.path('id') int id) async {
    final heroQuery = Query<Hero>(context)
      ..where((h) => h.id).equalTo(id);    

    final hero = await heroQuery.fetchOne();

    if (hero == null) {
      return Response.notFound();
    }
    return Response.ok(hero);
  }

  // Add a new Hero entry into the database
 @Operation.post()
  Future<Response> createHero(@Bind.body(ignore: ["id"]) Hero inputHero) async {
    final query = Query<Hero>(context)
      ..values = inputHero;

    final insertedHero = await query.insert();

    return Response.ok(insertedHero);
  }

  // Respond to delete operation on Hero resource
  @Operation.delete('id')
  Future<Response> deleteHero(@Bind.path('id') int id) async {
    final delQuery = Query<Hero>(context)
      ..where((h) => h.id).equalTo(id);

      final hero = await delQuery.delete();
      if (hero == null) {
        return Response.notFound();
      }
      return Response.ok(hero);
  }

  // Respond to PUT operation on hero resource
  @Operation.put('id')
  Future<Response> updateHero(@Bind.path('id') int id, @Bind.body(ignore: ['id']) Hero hero) async {
    final updateQuery = Query<Hero>(context)
      ..values = hero
      ..where((h) => h.id).equalTo(id);

    final updatedHero = await updateQuery.update();

    if (updatedHero == null) {
      return Response.notFound();
    }
    return Response.ok(updatedHero);
  }

}