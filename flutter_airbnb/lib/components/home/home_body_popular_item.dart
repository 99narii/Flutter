import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/constants.dart';
import 'package:flutter_airbnb/components/size.dart';
import 'package:flutter_airbnb/components/styles.dart';

class HomeBodyPopularItem extends StatelessWidget {

  final id;
  final popularList = ["p1.jpeg", "p2.jpeg", "p3.jpeg"];

  HomeBodyPopularItem({required this.id});    //생성자 초기화

  @override
  Widget build(BuildContext context) {

    //인기 아이템 3개가 지정된 부모 크기에서 나누기 3만큼으로 배치
    double popularItemWidth = getBodyWidth(context) /3 -5;
    //화면이 바뀔때마다 값은 계속 바뀜
    print(popularItemWidth);
    return Padding(
      padding: const EdgeInsets.only(bottom: gap_xl),
      child: Container(
        constraints: BoxConstraints(
          minWidth: 320,   //최소값을 지정
        ),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(
            children: [
              _buildPopularItemImage(),
              _buildPopularItemStar(),
              _buildPopularItemComment(),
              _buildPopularItemInfo(),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child : Image.asset(
            "assets/${popularList[id]}",
            fit: BoxFit.cover,
        ),
        ),
        SizedBox(height: gap_s),
      ],
    );
  }
  Widget _buildPopularItemStar() {    //별점 별만들기
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),


          ],
        ),
      ],
    );
  }
  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text("깔끔하고 다 갖춰져있어서 좋았어요:) 위치도 완전 좋아용 다들 여기서 살고싶어해요. 넘넘 좋아용 왕왕 내용이 좀 더 길어야 할것 같은데 3줄만 초과 해ㅇ면 잘 나와거에건ㅇ ",
        style: body1(),
          maxLines: 2,    // 2줄까지만 표시
          overflow: TextOverflow.ellipsis,    //길어지는 내용을 ... 으로
        ),
        SizedBox(height: gap_s),
      ],
    );
  }
  Widget _buildPopularItemInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/p1.jpeg"),
        ),
        SizedBox(width: gap_s),
        Column(
          children: [
            Text("나리", style: subtitle1(),),
            Text("한국"),
          ],
        )
      ],
    );
  }
}
