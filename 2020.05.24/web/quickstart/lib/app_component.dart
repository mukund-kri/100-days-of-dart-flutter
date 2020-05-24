import 'package:angular/angular.dart';
import 'package:angular_app/src/mock.heros.dart';
import 'package:angular_forms/angular_forms.dart';

import 'src/hero.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [
    coreDirectives,
    formDirectives,
  ],
)

class AppComponent {
  final title = 'Tour of Heros';
  List<Hero> heroes = mockHeroes;

  var hero = Hero(1, 'Windstorm');
}
