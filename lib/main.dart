import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'Pages/HomePage.dart';
import 'Pages/login.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Practice App",
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      // home: login(),
        debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => login(),
        MyRoutes.homeRoute:(context)=>HomePage(),
      }
    );
  }
}

