import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'home_page.dart';


class SplashView extends StatefulWidget{
  static const String routeName = "/";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(
          context, HomePage.routeName
      );
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/splash2.jpg",
      fit: BoxFit.cover,
    );
  }
}