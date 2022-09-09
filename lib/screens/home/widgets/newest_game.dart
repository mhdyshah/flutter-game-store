// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:game_store_app/models/game.dart';

class NewestGame extends StatelessWidget {
  final List<Game> listGame = Game.generateGames();
  NewestGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        children: listGame
            .map(
              (e) => Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        e.icon,
                        width: 60,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e.type,
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.35),
                                      fontSize: 13,
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  _buildStar(),
                                ],
                              ),
                              _buildButton(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildStar() {
    final List<Color> color = [
      Colors.amber.shade400,
      Colors.amber.shade400,
      Colors.amber.shade400,
      Colors.amber.shade400,
      Colors.grey.withOpacity(0.3),
    ];
    return Row(
      children: color
          .map(
            (e) => Icon(
              Icons.star,
              size: 15,
              color: e,
            ),
          )
          .toList(),
    );
  }

  Widget _buildButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 7,
        backgroundColor: Color(0xFF5F67EA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: () {},
      child: Text("Install"),
    );
  }
}
