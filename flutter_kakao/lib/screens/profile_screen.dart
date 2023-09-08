import 'package:flutter/material.dart';
import 'package:flutter_kakao/components/bottom_icon_btn.dart';
import 'package:flutter_kakao/components/round_icon_btn.dart';
import 'package:flutter_kakao/models/user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  final User user;    //유저 정보 불러오기
  const ProfileScreen({required this.user});   //생성자
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(user.backgroundImage),
          fit: BoxFit.fitHeight,    //높이를 전체로 잡음
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,    //투명처리
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              FontAwesomeIcons.times,   //X아이콘 생성
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);   //뒤로가기
            },
          ),
          actions: [
            RoundIconBtn(
                icon: FontAwesomeIcons.gift,
            ),
            SizedBox(width: 15),
            RoundIconBtn(
                icon: FontAwesomeIcons.cog,
            ),
            SizedBox(width: 15),
          ],
        ),
        body: Column(
          children: [
            Spacer(),   //화면 하단에 위치
            // 동적으로 프로필을 불러올 수있도록 삼항연산자 하지만 버튼만 바뀜
            // profile_card 컴포넌트에서 유저정보를 받아올 수 있도록 세팅해주기
          user.name == me.name ? _buildMyIcons() : _buildFriendIcons(),
          ],
        ),
      ),
    );
  }

  Widget _buildMyIcons() {
    return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BottomIconBtn(
                  icon: FontAwesomeIcons.comment,
                  text: "나와의 채팅"
              ),
              SizedBox(width: 50),
              BottomIconBtn(
                  icon: FontAwesomeIcons.pen,
                  text: "프로필 편집"
              ),
          ],
          ),
        );
  }

  Widget _buildFriendIcons() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomIconBtn(
              icon: FontAwesomeIcons.comment,
              text: "1:1채팅"
          ),
          SizedBox(width: 50),
          BottomIconBtn(
              icon: FontAwesomeIcons.phone,
              text: "통화하기"
          ),
        ],
      ),
    );
  }

}
