import '/models/movie.dart';

class MoviesRepository {
  final List<Movie> moviesOnTeather = [
    Movie(
      id: 1,
      name: 'Spider Man',
      img: 'assets/images/on_theater/spider_man_poster.jpg',

    ),
    Movie(
      id: 2,
      name: 'Matrix',
      img: 'assets/images/on_theater/matrix_poster.jpg',

    ),

  ];

  final List<Movie> moviesComingSoon = [
    Movie(
      id: 5,
      name: 'Doctor Strange',
      img: 'assets/images/coming_soon/doctor_strange_poster.jpg',

    ),
    Movie(
      id: 6,
      name: 'The Batman',
      img: 'assets/images/coming_soon/the_batman_poster.jpg',

    ),
  ];
}
