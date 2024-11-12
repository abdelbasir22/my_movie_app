import 'package:flutter/material.dart';
import 'package:my_movie_app/features/home/presentation/view/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeView(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/Image.png',
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          'Discover',
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'CineView',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color(0xffd393ff),
          ),
        ),
      ],
    );
  }
}
