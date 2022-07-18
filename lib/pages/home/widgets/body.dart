
import 'package:flutter/material.dart';
import 'coming_soon_movies.dart';
import 'header_search.dart';
import 'movies_tayang.dart';
import 'session_title.dart';

class HomeBody extends StatelessWidget {

  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          HeaderSearch(),
          SessionTitle(title: 'Tayang Sekarang'),
          MoviesOnTeather(),
          SessionTitle(title: 'Coming Soon'),
          ComingSoonMovies(),
        ],
      ),
    );
  }
}
