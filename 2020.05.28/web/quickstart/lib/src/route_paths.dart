/*
 * RoutePath :: defines how a url is parsed into a route. 
 * The RoutePaths pattern is how the angular tutoral structures coding
 * RoutePath's for the application
 */


import 'package:angular_router/angular_router.dart';

class RoutePaths {
  static final heroes = RoutePath(path: 'heroes');
  static final dashboard = RoutePath(path: 'dashboard');
}