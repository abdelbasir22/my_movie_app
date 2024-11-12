import 'package:flutter/material.dart';

import '../../../data/movie_model.dart';

class RatingsWidget extends StatelessWidget {
  const RatingsWidget({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.star,
            size: 45,
            color: Color(0xffffd700),
          ),
          Text(
            '${movie.voteAverage} /10 (${movie.voteCount}) Ratings',
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
