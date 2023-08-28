import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {

  final String imageName;
  final String title;

  const RecipeListItem(this.imageName, this.title);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),  //symmetric은 위 아래 여백
      child: Column(
        children: [
          AspectRatio(    //종횡비
            aspectRatio: 2 / 1,   //비율지정
              child: ClipRRect(   //Image에는 Decoration 속성이 없어서 ClipRRect 사용
                borderRadius: BorderRadius.circular(20),  //이미지 라운드 처리
                child: Image.asset("assets/images/$imageName.jpeg",

                  fit: BoxFit.cover,
                ),
              ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          Text("Have you ever made your own $title? Once you've tried a homemade never go back"
          , style: TextStyle(
              color: Colors.grey,
              fontSize: 12
            ),),

        ],
      ),
    );
  }
}
