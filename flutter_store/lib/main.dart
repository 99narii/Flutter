import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    //앱의 기본구성인 Material
    return MaterialApp(
      debugShowCheckedModeBanner: false,  //디버그 배너 지우기
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //앱의 기본구성인 Scaffold
    return Scaffold(
      body: SafeArea(   //상단 상태바 영역 보호
        child: Column(  //세로 배열인 컬럼형태의 레이아웃
          children: [
            Padding(    //앱바 영역의 여백
              padding: const EdgeInsets.all(25.0),
              child: Row(   //앱바 영역의 레이아웃을 가로 배열인 Row형태
                children: [
                  Text("Women", style: TextStyle(
                    fontWeight: FontWeight.bold
                  )
                  ),
                  Spacer(),
                  Text("Kids", style: TextStyle(
                      fontWeight: FontWeight.bold
                  )),
                  Spacer(),

                  Text("Shoes", style: TextStyle(
                      fontWeight: FontWeight.bold
                  )),
                  Spacer(),

                  Text("Bag", style: TextStyle(
                      fontWeight: FontWeight.bold
                  )),

                ],
              ),
            ),
            //이미지 2장의 하단 여백 영역을 채우기 위해 Expended로 영역을 절반씩
            Expanded(
                child: Image.asset("assets/acc.jpg", fit: BoxFit.cover,)),  //fit의 BoxFit.cover 속성을 주어 이미지 비율 그대로 확대
            SizedBox(
              height: 2,
            ),
            Expanded(
                child: Image.asset("assets/cloth.jpeg", fit: BoxFit.cover,)),
          ],
        ),
      ),
    );
  }
}
