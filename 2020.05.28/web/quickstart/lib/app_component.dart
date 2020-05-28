import 'package:angular/core.dart';
import 'package:angular_app/src/hero_service.dart';
import 'package:angular_router/angular_router.dart';

import 'src/hero_list_component.dart';
import 'src/routes.dart';
import 'src/route_paths.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [routerDirectives, HeroListComponent],
  providers: [ClassProvider(HeroService)],
  exports: [RoutePaths, Routes],
)
class AppComponent {

  final title = 'Tour of Heros';
}