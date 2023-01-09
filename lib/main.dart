import 'package:flutter/material.dart';
import 'package:mb1/global.dart';
import 'package:mb1/slider_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => homepage(),
        "slider_page": (context) => slider_page(),
      },
    ),
  );
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ALL CATEGORIES"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black.withOpacity(0.3),
      body: ListView.builder(
        itemCount: global.imagetype.length,
        itemBuilder: (context, i) {
          return Column(
            children: [
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  print(i);
                  setState(() {
                    if (i == 0) {
                      global.allimagelist = global.foodlist;
                    } else if (i == 1) {
                      global.allimagelist = global.curreteventlist;
                    } else if (i == 5) {
                      global.allimagelist = global.natureList;
                    }
                    Navigator.of(context).pushNamed("slider_page");
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      opacity: 0.8,
                      image: NetworkImage("${global.imagetype[i]["path"]}"),
                    ),
                  ),
                  child: Text(
                    "${global.imagetype[i]["type"]}",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
