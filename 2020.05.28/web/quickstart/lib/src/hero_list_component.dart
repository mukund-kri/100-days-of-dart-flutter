import 'package:angular/angular.dart';

import 'hero_component.dart';
import 'hero_service.dart';
import 'hero.dart';

@Component(
  selector: 'my-heroes',
  templateUrl: 'hero_list_component.html',
  styleUrls: ['hero_list_component.css'],
  directives: [
    coreDirectives,
    HeroComponent,
  ],
  providers: [ClassProvider(HeroService)],
)

class HeroListComponent implements OnInit {
  List<Hero> heroes;
  Hero selected;
  final HeroService _heroService;

  HeroListComponent(this._heroService);

  void _getHeroes() async {
     heroes = await _heroService.getAll();
     selected = heroes[0];
  }

  void ngOnInit() => _getHeroes();

  void onSelect(Hero hero) => selected = hero;
}
