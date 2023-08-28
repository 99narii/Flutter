import 'package:flutter/material.dart';

//StateFul 상태가 있는 위젯 -> 상태에 따라 위젯이 변경된다.
class ProfileTab extends StatefulWidget {

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;   //상태가 있는 위젯은 생성자를 가져야함
  //null을 받을 수 있도록 ? 붙여줌
  
  // 초기화를 위한 함수. 단 한번만 실행
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),    //전체공간을 차지하기위해 Expended,
        //하지만 오류 발생함 main에서 부모 부터 Expended를 해주고 와야함
      ],
    );
  }
  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: [
        Tab(icon: Icon(Icons.directions_car)),
        Tab(icon: Icon(Icons.directions_transit)),
      ],
    );
  }
  Widget _buildTabBarView() {
    return TabBarView(
          controller: _tabController,
          children: [                 //Grid 영역을 주기위해
            GridView.builder(
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Image.network("https://picsum.photos/id/${index +1}/300/300");
              },
            ),
            Container(color: Colors.red),
          ],
    );
  }
}
