// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:game_store_app/screens/home/widgets/newest_game.dart';
import 'package:game_store_app/screens/home/widgets/popular_game.dart';

class Category extends StatelessWidget {
  Category({super.key});
  final list = [
    {
      "icon": Icons.track_changes,
      "color": Color(0xFF605CF4),
      "title": "Arcade"
    },
    {
      "icon": Icons.sports_motorsports,
      "color": Color(0xFFFC77A6),
      "title": "Racing"
    },
    {
      "icon": Icons.casino,
      "color": Color(0xFF4391FF),
      "title": "Strategy",
    },
    {
      "icon": Icons.sports_esports,
      "color": Color(0xFF7182F2),
      "title": "More",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF6F8FF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 130,
            padding: EdgeInsets.all(25),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: list[index]["color"] as Color,
                      ),
                      child: Icon(
                        list[index]["icon"] as IconData,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      list[index]["title"] as String,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 33);
              },
              itemCount: list.length,
            ),
          ),
          _buildTitle("Popular games"),
          PopularGame(),
          _buildTitle("Newest game"),
          NewestGame(),
        ],
      ),
    );
  }

  Widget _buildTitle(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      width: double.maxFinite,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
