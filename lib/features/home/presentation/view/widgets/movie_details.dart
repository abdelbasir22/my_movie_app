import 'package:flutter/material.dart';
import 'package:my_movie_app/core/widgets/app_logo.dart';
import 'package:my_movie_app/features/home/presentation/view/widgets/image_and_adult_widget.dart';
import 'package:my_movie_app/features/home/presentation/view/widgets/movie_details_widget.dart';
import 'package:my_movie_app/features/home/presentation/view/widgets/rating_widget.dart';

import '../../../data/movie_model.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        backgroundColor: const Color(0xffffffff),
        title: const AppLogoDetails(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ImageAndAdultWidget(movie: movie),
            const SizedBox(
              height: 20,
            ),
            MovieDetailsWidget(movie: movie),
            const Spacer(),
            RatingsWidget(movie: movie),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
