import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'hero.dart';


@Component(
  selector: 'my-hero',
  template: '<h1>Hero Component</h1>',
  directives: [coreDirectives, formDirectives],
)
class HeroComponent {
 
}
