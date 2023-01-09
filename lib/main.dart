import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? isvisible = prefs.getBool("isvisible") ?? false;

  await prefs.setBool("isvisible", isvisible);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: (isvisible == false) ? "/" : "home_page",
      routes: {
        "/": (context) => introScreen(),
        "home_page": (context) => homePage(),
      },
    ),
  );
}

class introScreen extends StatefulWidget {
  const introScreen({Key? key}) : super(key: key);

  @override
  State<introScreen> createState() => _introScreenState();
}

class _introScreenState extends State<introScreen> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("SPLASH SCREEN"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        child: IndexedStack(
          index: currentindex,
          children: [
            Container(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(width: 2, color: Colors.cyan)),
                height: 400,
                width: 350,
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Text(
                      "Page 1",
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: () async {
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();

                              await prefs.setBool("isvisible", true);
                              Navigator.of(context)
                                  .pushReplacementNamed("home_page");
                            },
                            child: Text("Skip"),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.cyan)),
                        ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.cyan),
                            onPressed: () {
                              setState(() {
                                currentindex++;
                              });
                            },
                            child: Text("Next"))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(width: 2, color: Colors.cyan)),
                height: 400,
                width: 350,
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Text(
                      "Page 2",
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.cyan),
                            onPressed: () async {
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();

                              await prefs.setBool("isvisible", true);
                              Navigator.of(context)
                                  .pushReplacementNamed("home_page");
                            },
                            child: Text("Skip")),
                        ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.cyan),
                            onPressed: () {
                              setState(() {
                                currentindex++;
                              });
                            },
                            child: Text("Next"))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(width: 2, color: Colors.cyan)),
                height: 400,
                width: 350,
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Text(
                      "Page 3",
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.cyan),
                            onPressed: () async {
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();

                              await prefs.setBool("isvisible", true);
                              Navigator.of(context)
                                  .pushReplacementNamed("home_page");
                            },
                            child: Text("Skip")),
                        ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.cyan),
                            onPressed: () {
                              setState(() {
                                currentindex++;
                              });
                            },
                            child: Text("Next"))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
