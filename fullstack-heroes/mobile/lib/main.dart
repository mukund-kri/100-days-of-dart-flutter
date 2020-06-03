import 'package:flutter/material.dart';
import 'package:heroes/ui/hero_detail_widget.dart';

import 'ui/hero_home_widget.dart';

void main() => runApp(HeroesApp());

class HeroesApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tour of Heroes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HeroesHomePage(),
        '/detail': (context) => HeroDetailWidget(),
      },
    );
  }
}

