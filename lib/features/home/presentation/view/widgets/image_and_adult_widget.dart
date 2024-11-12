import 'package:flutter/material.dart';

import '../../../data/movie_model.dart';

class ImageAndAdultWidget extends StatelessWidget {
  const ImageAndAdultWidget({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
          ),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              movie.backdropPath,
              // fit: BoxFit.cover,
            ),
          ),
        ),
        if (movie.adult)
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.8),
                borderRadius: BorderRadius.circular(32),
              ),
              child: const Text(
                '+18',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
