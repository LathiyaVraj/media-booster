import 'package:flutter/material.dart';
import 'package:mb3/cg.dart';
import 'package:mb3/play_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => category(),
      'video': (context) => video_player(
            video: [],
          ),
    },
  ));
}
