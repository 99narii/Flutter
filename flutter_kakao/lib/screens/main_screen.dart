import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_kakao/screens/chat_screen.dart';
import 'package:flutter_kakao/screens/friend_screen.dart';
import 'package:flutter_kakao/screens/more_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(   //하나의 스크린에서 자식 내용만 바뀜
          index: _selectedIndex,
          children: [
            FriendScreen(),
            ChatScreen(),
            MoreScreen(),
          ],
        ),
      //하단 내비 설정
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,    //라벨 사용 안할 때 위치 맞춤
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,   //선택 된 아이콘에 컬러주기
        backgroundColor: Colors.grey[100],  //하단바에 배경색
        selectedItemColor: Color(0xff533E6B),    //선택 된 아이콘 색 지정
        unselectedItemColor: Color(0xffA381CA),   //기본 아이콘 색 지정
        onTap: (index) {
          print("선택 된 index : , $index");
          setState(() {
            _selectedIndex = index;
            _selectedIndex = index;
          });
        },
      items: [
          //FontAwesome 아이콘 사용
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user), label: "친구"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.comment), label: "채팅"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.ellipsisH), label: "더보기"),
        ],
      ),
    );
  }
}
