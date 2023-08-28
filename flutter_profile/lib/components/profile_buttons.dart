import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildFollowButton(),
        _buildMessagewButton(),
      ],
    );
  }

  Widget _buildFollowButton() {
    return InkWell(
      onTap: () {
        print("Follow 버튼 클릭");
    },
      child: Container(
        alignment: Alignment.center,      //글자 가운데로
        width: 170,
        height: 45,
        child: Text(
          "Follow",
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),

      ),
    );
  }
  Widget _buildMessagewButton() {
    return InkWell(
      onTap: () {
        print("Message 전달");
      },
      child: Container(
        alignment: Alignment.center,
        width: 170,
        height: 45,
        child: Text(
          "Message",
          style: TextStyle(color: Colors.blue),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.blue),
        ),
      ),
    );
  }
}
