// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:game_store_app/models/game.dart';

class PopularGame extends StatelessWidget {
  final List<Game> listGames = Game.generateGames();
  PopularGame({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(listGames[index].bgImg),
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: listGames.length,
      ),
    );
  }
}
