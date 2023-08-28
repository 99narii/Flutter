import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe/components/recipe_list_item.dart';
import 'package:flutter_recipe/components/recipe_menu.dart';
import 'package:flutter_recipe/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildRecipeAppBar(),   //AppBar 생성
        body: Padding(    //body부 전체에 padding
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              RecipeTitle(),
              RecipeMenu(),
              RecipeListItem("coffee", "Made Coffee"),
              RecipeListItem("burger", "Made Burger"),
              RecipeListItem("pizza", "Made Pizza"),
            ],
          ),
        ),
    );
  }
  AppBar _buildRecipeAppBar() => AppBar(
    backgroundColor: Colors.white,
    elevation: 1.0,   //그림자효과
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Icon(CupertinoIcons.search,
        color: Colors.black,),
      ),

      Icon(CupertinoIcons.heart,
      color: Colors.redAccent,
      ),
      SizedBox(width: 15,)
    ],
  );

}

