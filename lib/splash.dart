import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Size phoneSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Image(
          height: phoneSize.height / 3,
          width: phoneSize.height / 3,
          image: const AssetImage('assets/images/flutter-icon.png'),
        ),
      ),
    );
  }
}
