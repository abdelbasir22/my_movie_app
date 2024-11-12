import 'package:flutter/material.dart';
import 'package:my_movie_app/features/splah/presentation/view/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SplashViewBody(),
    );
  }
}
