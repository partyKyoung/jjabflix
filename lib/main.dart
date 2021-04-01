import 'package:flutter/material.dart';
import 'package:jjabflix/screen/home_screen.dart';
import 'package:jjabflix/widget/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

// MyApp 상태관리 
class _MyAppState extends State<MyApp> {
  TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jjabflix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white
      ),
      home: DefaultTabController(
        length: 4, 
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(), // 사용자가 직접 손가락 모션을 통해서 스크롤 하는 기능을 막음
            children: [
              HomeScreen(),
              Container(child: Center(
                child: Text('공개예정')
              )),
              Container(child: Center(
                child: Text('검색')
              )),
              Container(child: Center(
                child: Text('저장한 콘텐츠 목록')
              ))
            ], // 여기다가 화면내용을 넣으면 된다.
          ),
          bottomNavigationBar: BottomBar(),
        ))
    );
  }
}