
import 'package:flutter/material.dart';
import 'package:jjabflix/model/movie_model.dart';

class MovieSlider extends StatelessWidget {
  final List<Movie> movies;
  final String title;

  MovieSlider(this.movies, this.title);

  @override
  Widget build(BuildContext context) {   
    return Container(
      decoration: BoxDecoration(
        color: Colors.black
      ),
      padding: EdgeInsets.only(top: 30, left: 8, right: 8, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title),
          Padding(padding: EdgeInsets.only(bottom: 8)),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeBoxImages(movies),
            )
          )
        ]
      )
    );
  }
}

List<Widget> makeBoxImages(List<Movie> movies) {
  List<Widget> results = [];

  for (var i = 0; i < movies.length; i+=1) {
    results.add(
      InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(movies[i].poster)
          )
        )
      )
    );
  }

  return results;
}