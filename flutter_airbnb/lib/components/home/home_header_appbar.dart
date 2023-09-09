import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/constants.dart';
import 'package:flutter_airbnb/components/size.dart';
import 'package:flutter_airbnb/components/styles.dart';

class HomeHeaderAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        //앱 바 부분이 로고 왼편, 회원가입/로그인이 오른편으로 갈 수있도록
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildAppBarLogo(),
          _buildAppBarMenu(),
        ],
      ),
    );
  }
  Widget _buildAppBarLogo() {
    return Row(
      children: [
        Image.asset(
          "assets/logo.png",
          width: 30,
          height: 30,
          color: kAccentColor,
        ),
        SizedBox(
          width: gap_s,
        ),
        Text(
          "airbnb",
        style: h5(mColor: Colors.white),
        ),
      ],
    );
  }
  Widget _buildAppBarMenu() {
    return Row(
      children: [
        Text("회원가입",
        style: subtitle1(mColor: Colors.white),
        ),
        SizedBox(
          width: gap_m,
        ),
        Text(
          "로그인",
          style: subtitle1(mColor: Colors.white),
        )
      ],
    );
  }
}

