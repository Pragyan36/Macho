import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(duration: 2, goToPage: login()
    ),);
  }
}

class SplashScreen extends StatelessWidget {
int duration = 0;
Widget goToPage;
SplashScreen({ required this.goToPage, required this.duration});
  @override 
  Widget build(BuildContext context) {
Future.delayed(Duration(seconds: this.duration),(){
  Navigator.push(context, MaterialPageRoute(builder: (context)=> this.goToPage));
});

    return Scaffold(body: Container(color: Colors.white,
    alignment: Alignment.center,
    child: Image.asset(
                  "assets/macho.JPG",
                  height: 200.0,
                  fit: BoxFit.cover,
                  
                ),),);
  }
}

