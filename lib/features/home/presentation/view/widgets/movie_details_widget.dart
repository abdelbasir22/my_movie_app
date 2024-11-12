import 'package:flutter/material.dart';

import '../../../data/movie_model.dart';

class MovieDetailsWidget extends StatelessWidget {
  const MovieDetailsWidget({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        movie.title,
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
      ),
      subtitle: Text(
        movie.overview,
        style: const TextStyle(
          fontSize: 18,
          color: Color.fromARGB(255, 97, 96, 96),
        ),
      ),
    );
  }
}
