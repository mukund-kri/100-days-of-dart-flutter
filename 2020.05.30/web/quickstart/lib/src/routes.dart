/*
 * Assemble the routes ie. route path to view mapping
 */

import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'hero_list_component.template.dart' as hero_list_template;
import 'dashboard_component.template.dart' as dashboard_template;
import 'hero_component.template.dart' as hero_template;

class Routes {
  static final hero = RouteDefinition(
    routePath: RoutePaths.hero,
    component: hero_template.HeroComponentNgFactory,
  );

  static final heroes = RouteDefinition(
    routePath: RoutePaths.heroes,
    component: hero_list_template.HeroListComponentNgFactory,
  );

  static final dashboard = RouteDefinition(
    routePath: RoutePaths.dashboard,
    component: dashboard_template.DashboardComponentNgFactory,
  );

  static final defaultRoute = RouteDefinition.redirect(
    path: '',
    redirectTo: RoutePaths.dashboard.toUrl(),
  );

  static final all = <RouteDefinition>[
    hero,
    heroes,
    dashboard,
    defaultRoute,
  ];
}
