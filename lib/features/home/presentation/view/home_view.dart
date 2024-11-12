import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie_app/features/home/presentation/manger/movie_cubit/movie_cubit.dart';
import 'package:my_movie_app/features/home/presentation/view/widgets/home_view_body.dart';

import '../../../../core/widgets/app_logo.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MovieCubit, MovieState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = MovieCubit().get(context);

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const AppLogo(),
            actions: [
              IconButton(
                onPressed: () {
                  cubit.removePage();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text('${cubit.page}'),
              ),
              IconButton(
                onPressed: () {
                  cubit.addPage();
                },
                icon: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
          body: const HomeViewBody(),
        );
      },
    );
  }
}
