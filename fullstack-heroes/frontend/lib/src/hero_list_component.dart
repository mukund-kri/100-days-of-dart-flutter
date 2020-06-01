import 'package:angular/angular.dart';
import 'package:angular_app/src/route_paths.dart';
import 'package:angular_router/angular_router.dart';

import 'hero_service.dart';
import 'hero.dart';

@Component(
  selector: 'my-heroes',
  templateUrl: 'hero_list_component.html',
  styleUrls: ['hero_list_component.css'],
  directives: [
    coreDirectives,
    routerDirectives,
  ],
  providers: [ClassProvider(HeroService)],
  exports: [RoutePaths],
  pipes: [commonPipes],
)
class HeroListComponent implements OnInit {
  List<Hero> heroes;
  Hero selected;
  final HeroService _heroService;
  final Router _router;

  HeroListComponent(this._heroService, this._router);

  void _getHeroes() async {
    heroes = await _heroService.getAll();
    selected = heroes[0];
  }

  void ngOnInit() => _getHeroes();

  void onSelect(Hero hero) => selected = hero;

  Future<void> add(String name) async {
    name = name.trim();
    if (name.isEmpty) return null;
    heroes.add(await _heroService.create(name));
    selected = null;
  }

  Future<void> delete(Hero hero) async {
    await _heroService.delete(hero.id);
    heroes.remove(hero);
    if (selected == hero) selected = null;
  }

  String _heroUrl(int id) => RoutePaths.hero.toUrl(parameters: {'id': '$id'});

  Future<NavigationResult> gotoDetail() =>
      _router.navigate(_heroUrl(selected.id));
}
