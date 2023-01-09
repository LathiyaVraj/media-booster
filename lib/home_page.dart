import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    ),
  );
}

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("Home Page"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();

              await prefs.setBool("isvisible", false);
              Navigator.of(context)
                  .pushNamedAndRemoveUntil("/", (route) => false);
              // Navigator.of(context).pushReplacementNamed("dashboard");
            },
            icon: Icon(Icons.logout_outlined),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "HOME PAGE",
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
      ),
    );
  }
}
