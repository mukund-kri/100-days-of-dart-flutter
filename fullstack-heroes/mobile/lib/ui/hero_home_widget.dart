import 'package:flutter/material.dart';
import 'package:heroes/service/hero_service.dart';
import '../model/hero.dart' as h;

class HeroesHomePage extends StatefulWidget {

  final String title = "Tour of Heroes";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HeroesHomePage> {

  List<h.Hero> heroes;
  HeroService heroService;
  Future<List<h.Hero>> heroesFuture;

  @override
  void initState() {
    super.initState();
    heroService = HeroService();
    heroesFuture = heroService.getAll();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding (
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: FutureBuilder(
          future: heroService.getAll(),
          builder: (BuildContext ctx, AsyncSnapshot<List<h.Hero>> snapshot){

            if(snapshot.hasError) {
              return Center(
                child: Text(
                    "Something wrong with message: ${snapshot.error.toString()}"),
              );
            } else if (snapshot.connectionState == ConnectionState.done) {
              return Center(
                child: Column(
                  children: snapshot.data.map(_heroToCard).toList(),
                )
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }

  Widget _heroToCard(h.Hero hero) {
    return GestureDetector(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ListTile(
              title: Text(hero.name),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('Delete'),
                  onPressed: () {
                    heroService.delete(hero.id)
                        .then((e) => this.setState(() {}));
                    },
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, '/detail', arguments: hero);
      }
    );
  }
}
