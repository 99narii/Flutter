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
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(    //공통된 버튼 사용할 때 가장 편함
            backgroundColor: Colors.black,
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius:  BorderRadius.circular(30),
            ),
            minimumSize: Size(400, 60),
          ),
        ),
      ),
      initialRoute: "/login",     //처음 띄울 화면
      routes: {       //라우터를 정의해줌
        "/login": (context) => LoginPage(),   //{ return LoginPage();},익명함수를 사용해도 됨
        "/home" : (context) => HomePage(),
      },
    );
  }
}
