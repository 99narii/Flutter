import 'package:flutter/material.dart';
import 'package:flutter_profile/components/profile_buttons.dart';
import 'package:flutter_profile/components/profile_count_info.dart';
import 'package:flutter_profile/components/profile_drawer.dart';
import 'package:flutter_profile/components/profile_header.dart';
import 'package:flutter_profile/components/profile_tab.dart';
import 'package:flutter_profile/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(

      ),   //뒤쪽에 생기는 Drawer
      appBar: _buildProfileAppBar(),
      body: NestedScrollView(   //스크롤을 두개 넣을 떄
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverList(delegate: SliverChildListDelegate(
              [
                SizedBox(height: 20),
                ProfileHeader(),
                SizedBox(height: 20),
                ProfileCountInfo(),
                SizedBox(height: 20),
                ProfileButtons(),

              ]),
            ),
          ];
        },
        body: ProfileTab(),

      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      leading: Icon(Icons.arrow_back_ios),
      title: Text("Raerii Profile"),
      centerTitle: true,      //가운데 정렬
    );
  }
}


