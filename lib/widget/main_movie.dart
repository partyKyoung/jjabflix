import 'package:flutter/material.dart';
import 'package:jjabflix/model/movie_model.dart';

class MainMovie extends StatefulWidget {
  final Movie movie;

  MainMovie({this.movie});

  _MainMovieState createState() => _MainMovieState();
}

class _MainMovieState extends State<MainMovie> {
  Movie movie;
  String poster;
  String keyword;

  @override
  void initState() {
    super.initState();

    movie = widget.movie;
    poster = movie.poster;
    keyword = movie.keyword;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Stack(
          children: [
            new Container(child: Image.asset(poster, fit: BoxFit.fill, width: double.infinity)),
            new Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.black,  Colors.black26, Colors.black12],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter)),
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      children: <Widget>[
                        Text(keyword, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  child: Column(
                                children: <Widget>[
                                  IconButton(
                                      icon: Icon(Icons.add), onPressed: () {}),
                                  Text('내가 찜한 콘텐츠',
                                      style: TextStyle(fontSize: 12))
                                ],
                              )),
                              Container(
                                  padding: EdgeInsets.only(right: 32.5),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Row(children: <Widget>[
                                        Icon(Icons.play_arrow,
                                            color: Colors.black),
                                        Padding(
                                            padding: EdgeInsets.only(right: 3)),
                                        Text('재생',
                                            style:
                                                TextStyle(color: Colors.black)),
                                        Padding(
                                            padding: EdgeInsets.only(right: 5)),
                                      ]),
                                      style: ButtonStyle(
                                          textStyle: MaterialStateProperty.all(
                                              TextStyle(fontSize: 12)),
                                          padding: MaterialStateProperty.all(
                                              EdgeInsets.symmetric(
                                                  vertical: 3, horizontal: 3)),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.white)))),
                              Container(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Column(
                                    children: <Widget>[
                                      IconButton(
                                          icon: Icon(Icons.info_outline),
                                          onPressed: () {}),
                                      Text('정보', style: TextStyle(fontSize: 12))
                                    ],
                                  ))
                            ])
                      ],
                    ))),
          ],
        )
      ],
    ));
  }
}
