import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late final Ticker _ticker;
  Duration elapsed = Duration.zero;
  @override
  void initState() {
    super.initState();
    _ticker = createTicker((time) {
      setState(() {
        elapsed = time;
      });
    });
    _ticker.start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text("mili: "),
                  Text(elapsed.inMilliseconds.toString()),
                ],
              ),
              Row(
                children: [
                  const Text("sec: "),
                  Text(elapsed.inSeconds.toString()),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
