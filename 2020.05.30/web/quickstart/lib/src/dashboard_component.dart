import 'package:angular/angular.dart';
import 'package:angular/core.dart';
import 'package:angular_app/src/hero.dart';
import 'package:angular_app/src/hero_service.dart';
import 'package:angular_app/src/route_paths.dart';
import 'package:angular_router/angular_router.dart';

import 'hero_search_component.dart';

@Component(
  selector: 'my-dashboard',
  templateUrl: 'dashboard_component.html',
  styleUrls: ['dashboard_component.css'],
  directives: [coreDirectives, routerDirectives, HeroSearchComponent],
)
class DashboardComponent implements OnInit {
  List<Hero> heroes;

  final HeroService _heroService;
  final Location _location;

  DashboardComponent(this._heroService, this._location);

  @override
  void ngOnInit() async {
    heroes = (await _heroService.getAll()).skip(1).take(4).toList();
  }

  String heroUrl(int id) => RoutePaths.hero.toUrl(parameters: {'id': '$id'});
}
