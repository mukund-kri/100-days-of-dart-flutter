import 'package:flutter/material.dart';
import 'package:heroes/service/hero_service.dart';
import '../model/hero.dart' as h;


class HeroDetailWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HeroDetailWidgetState();
}


class _HeroDetailWidgetState extends State<HeroDetailWidget> {

  h.Hero hero;
  HeroService service = HeroService();
  bool _isEditingText = false;
  TextEditingController _editingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    print("Build widget");
    hero = ModalRoute
        .of(context)
        .settings
        .arguments;
    bool _isEditingText = false;

    // Hacky!!!!!!
    _editingController.text = hero.name;

    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Details'),
      ),
      body: Center(
        child: _editTitleTextField(context),
      ),
    );
  }

  Widget _editTitleTextField(context)  {

    if (_isEditingText)
      return Center(
        child: TextField(
          onSubmitted: (newValue){
            hero.name = newValue;
            service.update(hero)
                .then((e) => Navigator.pushNamed(context, '/'));
          },

          autofocus: true,
          controller: _editingController,
        ),
      );

    return InkWell(
      onTap: () {
        setState(() {
          _isEditingText = true;
        });
      },
      child: Text(_editingController.text),
    );
  }
}