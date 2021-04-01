import 'package:flutter/material.dart';

// 상태값이 없는 위젯
class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Container(
          height: 50,
          child: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            indicatorColor: Colors.transparent,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home, size: 18),
                child: Text('홈', style: TextStyle(fontSize: 9)),
              ),
              Tab(
                icon: Icon(Icons.play_circle_outline, size: 18),
                child: Text('공개예정', style: TextStyle(fontSize: 9)),
              ),
              Tab(
                icon: Icon(Icons.search, size: 18),
                child: Text('검색', style: TextStyle(fontSize: 9)),
              ),
              Tab(
                icon: Icon(Icons.download_rounded, size: 18),
                child: Text('저장한 콘텐츠 목록', style: TextStyle(fontSize: 9)),
              )
            ]
          ),
        ));
  }
}
