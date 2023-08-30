import 'package:flutter/material.dart';
import 'package:flutter_login/pages/home_page.dart';
import 'package:flutter_login/pages/login_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login",     //처음 띄울 화면
      routes: {       //라우터를 정의해줌
        "/login": (context) => LoginPage(),   //{ return LoginPage();},익명함수를 사용해도 됨
        "/home" : (context) => HomePage(),
      },
    );
  }
}
