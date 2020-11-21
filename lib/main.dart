import 'package:flutter/material.dart';
import './views/screens/home_screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WordPress Blog to App',
      theme: ThemeData(
          buttonColor: Color.fromRGBO(22, 31, 50, 1),
          backgroundColor: Colors.white,
          primaryColor: Color.fromRGBO(22, 31, 50, 1),
          accentColor: Color.fromRGBO(151, 156, 164, 1),
          fontFamily: 'Alegreya Sans',
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: ThemeData.light().textTheme.copyWith(
              headline1: TextStyle(
                fontFamily: "Literata",
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: Color.fromRGBO(22, 31, 50, 1),
              ),
              headline3: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(22, 31, 50, 1),
                fontSize: 22,
              ),
              bodyText1: TextStyle(
                color: Color.fromRGBO(151, 156, 164, 1),
                fontSize: 20,
              ),
              subtitle1: TextStyle(
                fontSize: 18,
              ),
              subtitle2: TextStyle(
                color: Color.fromRGBO(151, 156, 164, 1),
                fontSize: 14,
              ))),
      home: HomeScreen(),
    );
  }
}
