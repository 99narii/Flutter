
import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/common_form_field.dart';
import 'package:flutter_airbnb/components/constants.dart';
import 'package:flutter_airbnb/components/size.dart';

import '../styles.dart';

class HomeHeaderForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: gap_m, bottom: gap_l),
      child: Align(
        //검색 반응형으로
        alignment: screenWidth < 520 ? Alignment(0, 0) : Alignment(-0.6, 0),
        child: Container(     //하얀박스
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(gap_l),
              child: Column(
                children: [
                  _buildFormTitle(),  //폼 위젯 제목 영역
                  _buildFormField(),  //폼 인풋 영역
                  _buildFormSubmit(),  //폼 전송 영역
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return Column(
      children: [
        Text("에어비앤비에서 숙소를 검색하세요.",
        style: h4(),
          ),
        SizedBox(
            height: gap_xs,
          ),
        Text(
          "혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 '공간전체' 숙소까지, 에어비앤비에 다 있습니다. ",
          style: body1(),
        ),
        SizedBox(
          height: gap_m,
        ),
      ],
    );
  }
  Widget _buildFormField() {
    return Column(
      children: [
        CommonFormField(prefixText: "위치", hintText: "근처 추천 장소"),
        SizedBox(height: gap_xs),
        Row(
          children: [
            Expanded(
                child: CommonFormField(prefixText: "체크인", hintText: "날자입력")
            ),
            SizedBox(width: gap_xs),
            Expanded(
                child: CommonFormField(prefixText: "체크아웃", hintText: "날자입력")
            ),
            SizedBox(height: gap_xs),

          ],
        ),
        SizedBox(height: gap_xs),
        Row(
          children: [
            Expanded(
                child: CommonFormField(prefixText: "성인", hintText: "2")
            ),
            SizedBox(width: gap_xs),

            Expanded(
                child: CommonFormField(prefixText: "어린이", hintText: "0")
            ),
            SizedBox(height: gap_xs),
          ],
        ),
        SizedBox(height: gap_m,
        ),
      ],
    );
  }
  Widget _buildFormSubmit() {
    return SizedBox(
      width: double.infinity,
      height: 50,

      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kAccentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
          onPressed: (){},
          child: Text("검색", style: subtitle1(mColor: Colors.white),
          ),
      ),
    );
  }
}
