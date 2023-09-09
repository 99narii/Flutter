import 'package:flutter/material.dart';
import 'package:flutter_kakao/screens/profile_screen.dart';
import '../models/user.dart';

class ProfileCard extends StatelessWidget {
  final User user;

  const ProfileCard({required this.user}); //무조건 받음

  @override
  Widget build(BuildContext context) {
    return InkWell(   //모든 것을 버튼화
      onTap: () {
        Navigator.push(   //프로필을 눌렀을 때 프로필 화면으로
          context, MaterialPageRoute(   
          builder: (context) => ProfileScreen(user: user),
        ),
        );
      },
      child: ListTile(
        leading: CircleAvatar(    //프로필 사진 스타일 circle
          radius: 20,     //프로필 사진 크기
          backgroundImage: NetworkImage(
              user.backgroundImage,
          ),
        ),
        title: Text(
          user.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          user.intro,
          style: TextStyle(fontSize: 12),
        ),
        //contentPadding: EdgeInsets.all(0),  //프로필 카드의 패딩값을 0
      ),
    );
  }
}

