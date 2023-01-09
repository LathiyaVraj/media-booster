import 'package:flutter/material.dart';
import 'package:mb3/global.dart';
import 'package:mb3/play_page.dart';

void main() {
  runApp(
    category(),
  );
}

class category extends StatefulWidget {
  const category({Key? key}) : super(key: key);

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CATAGORIES"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              video_player(video: global.videonature)));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border(
                            top: BorderSide(width: 20, color: Colors.white),
                            bottom: BorderSide(width: 20, color: Colors.white),
                            left: BorderSide(width: 20),
                            right: BorderSide(
                              width: 20,
                            )),
                      ),
                      child: Text(
                        "NATURE",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              video_player(video: global.videogame)));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border(
                            top: BorderSide(width: 20, color: Colors.white),
                            bottom: BorderSide(width: 20, color: Colors.white),
                            left: BorderSide(width: 20),
                            right: BorderSide(
                              width: 20,
                            )),
                      ),
                      child: Text(
                        "GAME",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              video_player(video: global.videocar)));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border(
                            top: BorderSide(width: 20, color: Colors.white),
                            bottom: BorderSide(width: 20, color: Colors.white),
                            left: BorderSide(width: 20),
                            right: BorderSide(
                              width: 20,
                            )),
                      ),
                      child: Text(
                        "CAR",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
