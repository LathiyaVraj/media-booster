import 'package:flutter/material.dart';
import 'package:mb2/global.dart';
import 'package:mb2/play_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => homePage(),
        "play_page": (context) => audioplay(),
      },
    ),
  );
}

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePage();
}

class _homePage extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Audio"),
          backgroundColor: Colors.black26,
          centerTitle: true,
        ),
        backgroundColor: Colors.black.withOpacity(0.2),
        body: ListView.builder(
            itemCount: global.musicassetlist.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10),
                child: InkWell(
                  onTap: () async {
                    print(i);
                    setState(() {
                      global.number = i;
                    });
                    Navigator.of(context).pushNamed("play_page");
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      ListTile(
                        leading: Icon(
                          Icons.music_note,
                          color: Colors.white,
                        ),
                        title: Text(
                          "${global.musicassetlist[i]["name"]}",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
