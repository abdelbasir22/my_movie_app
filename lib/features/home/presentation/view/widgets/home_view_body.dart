import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie_app/features/home/presentation/manger/movie_cubit/movie_cubit.dart';
import 'package:my_movie_app/features/home/presentation/view/widgets/movie_details.dart';
import 'package:my_movie_app/features/home/presentation/view/widgets/movie_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MovieCubit, MovieState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = MovieCubit().get(context);
        if (state is MovieLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is MovieFailure) {
          return const Text('Some thing went wrong, plase try again!');
        }
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15.0,
              mainAxisSpacing: 20.0,
              childAspectRatio: 9 / 16,
            ),
            itemCount: cubit.allMovies.length,
            itemBuilder: (context, index) {
              return MovieItem(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MovieDetails(
                          movie: cubit.allMovies[index],
                        ))),
                movie: cubit.allMovies[index],
              );
            },
          ),
        );
      },
    );
  }
}
