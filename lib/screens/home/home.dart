// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:game_store_app/screens/home/widgets/category.dart';
import 'package:game_store_app/screens/home/widgets/header.dart';
import 'package:game_store_app/screens/home/widgets/search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5F67EA),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: Offset(150, 50),
              child: Image.asset(
                "assets/images/bg_liquid.png",
                width: 200,
              ),
            ),
            Positioned(
              right: 0,
              top: 200,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: Offset(180, 100),
                child: Image.asset(
                  "assets/images/bg_liquid.png",
                  width: 200,
                ),
              ),
            ),
            Column(
              children: [
                Header(),
                SizedBox(height: 10),
                Search(),
                Category(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
