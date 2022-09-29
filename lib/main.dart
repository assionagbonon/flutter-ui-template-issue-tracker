import 'package:flutter/material.dart';
import 'package:template1/app_colors.dart';
import 'package:template1/page2.dart';
import 'package:template1/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: MyColors.primary.shade900,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 35,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: Image(
                          image: AssetImage("assets/images/ic_home.png"),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          "Utility Tracker",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: MyColors.primaryLight.shade400),
                        ),
                      ),
                    ],
                  ),
                ),
                Image(
                  image: AssetImage("assets/images/ville500.png"),
                  height: 200,
                ),
                SizedBox(
                  height: 45,
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "* Save with us!",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: MyColors.primaryLight.shade900),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Don't be afraid \nto look at your bills!",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: MyColors.primaryLight.shade900),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "We can help you deal with your bills and you don't miss any payement! Easy and quick you can track readings of all your utility meters in one place.",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                            color: MyColors.primaryLight.shade900,
                            height: 1.5),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            GestureDetector(
              onTap: () {
                //La redirection sur la page d'accueil
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                    color: MyColors.primaryLight.shade900,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                    child: Text(
                      "Let's start",
                      style:
                      TextStyle(color: MyColors.primary.shade900, fontSize: 16),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
