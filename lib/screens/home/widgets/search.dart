// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Stack(
        children: [
          TextField(
            cursorColor: Color(0xFF5F67EA),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(width: 0, style: BorderStyle.none),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 20,
              ),
              prefixIcon: Icon(
                Icons.search_outlined,
                color: Color(0xFF5F67EA),
                size: 30,
              ),
              hintText: "Search game",
              hintStyle: TextStyle(color: Colors.black38),
              fillColor: Color(0xFFF6F8FF),
              filled: true,
            ),
          ),
          Positioned(
            bottom: 6,
            right: 12,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF5F67EA),
              ),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.mic_outlined,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
