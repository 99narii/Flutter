import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        _buildHeaderAvatar(),
        SizedBox(width: 20),
        _buildHeaderProfile(),
      ],
    );
  }



  //Widget 부모타입으로 바꿔주기

    Widget _buildHeaderAvatar() {
      return SizedBox(
        width: 100,
        height: 100,
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/avatar.png"),
        ),
      );
  }

  Widget _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("유래리", style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700),
        ),
        Text("탐정이죠/쫑애비",style: TextStyle(fontSize: 20),),
        Text("dataScience",style: TextStyle(fontSize: 15),)
      ],
    );
  }
}
