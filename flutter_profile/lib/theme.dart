

import 'package:flutter/material.dart';
// primary color = 앱의 브랜드 컬러
// secondary(accent color) = 앱의 버튼이나 상호작용하는 이벤트 종류들의 컬러

ThemeData theme() {
  return ThemeData(
    primaryColor: Colors.white,   //앱의 브랜드 컬러
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );
}