import 'package:flutter/material.dart';
import 'package:jjabflix/model/movie_model.dart';
import 'package:jjabflix/widget/main_movie.dart';

// 영화 목록 state을 가지고 있음
class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '클레멘타인',
      'keyword': '액션/가족',
      'poster': 'images/movie1.jpeg',
      'like': false
    }),
    Movie.fromMap({
      'title': '7광구',
      'keyword': 'SF/괴수',
      'poster': 'images/movie2.jpeg',
      'like': false
    }),
    Movie.fromMap({
      'title': '조선미녀삼총사',
      'keyword': '코미디/사극',
      'poster': 'images/movie3.jpeg',
      'like': false
    }),
    Movie.fromMap({
      'title': '성냥팔이소녀의재림',
      'keyword': '액션/SF',
      'poster': 'images/movie4.jpeg',
      'like': false
    }),
    Movie.fromMap({
      'title': '저스티스리그',
      'keyword': '액션/히어로',
      'poster': 'images/movie5.jpeg',
      'like': false
    }),
    Movie.fromMap({
      'title': '도리화가',
      'keyword': '드라마/사극',
      'poster': 'images/movie6.jpeg',
      'like': false
    }),
    Movie.fromMap({
      'title': '자전차왕 엄복동',
      'keyword': '드라마/사극',
      'poster': 'images/movie7.jpeg',
      'like': false
    }),
    Movie.fromMap({
      'title': 'REAL',
      'keyword': '액션/느와르',
      'poster': 'images/movie8.jpeg',
      'like': false
    }),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Stack(children: <Widget>[
        MainMovie(movie: movies[0]),
        TopBar()
      ])
    ]);
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset('images/logo.png', fit: BoxFit.contain, height: 25),
              Container(
                padding: EdgeInsets.only(right: 1),
                child: Text('TV프로그램', style: TextStyle(fontSize: 14)),
              ),
              Container(
                padding: EdgeInsets.only(right: 1),
                child: Text('영화', style: TextStyle(fontSize: 14)),
              ),
              Container(
                padding: EdgeInsets.only(right: 1),
                child: Text('내가 찜한 콘텐츠', style: TextStyle(fontSize: 14)),
              )
            ]));
  }
}
