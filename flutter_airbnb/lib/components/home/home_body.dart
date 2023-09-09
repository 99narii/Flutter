import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_banner.dart';
import 'package:flutter_airbnb/components/home/home_body_popular.dart';
import 'package:flutter_airbnb/components/size.dart';

class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    print("bodyWidth : $bodyWidth");

    double screenWidth = MediaQuery.of(context).size.width;
    return Align(   //디폴트는 가운데 정렬 이기때문에 정렬 건드리지 않아도 됨

      child: SizedBox(
        //반응형 구현 할 수 있도록 제약조건
        width: screenWidth < 420 ? double.infinity : bodyWidth,
        child: Column(
          children: [
            HomeBodyBanner(),
            HomeBodyPopular(),
          ],
        ),
      ),
    );
  }
}
