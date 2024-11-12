import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: const Color(0xffd393ff)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.movie_filter,
            color: Colors.white,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'CineView',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class AppLogoDetails extends StatelessWidget {
  const AppLogoDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.white,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.movie_filter,
            color: Color(0xffd393ff),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'CineView',
            style: TextStyle(
              color: Color(0xff000000),
            ),
          ),
        ],
      ),
    );
  }
}
