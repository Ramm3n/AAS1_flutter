import 'package:bebas/nav.dart';
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: FlutterSplashScreen.fadeIn(
          backgroundColor: Colors.white,
          onInit: () {
            debugPrint("On Init");
          },
          onEnd: () {
            debugPrint("On End");
          },
          childWidget: SizedBox(
            height: 500,
            width: 300,
            child: Image.asset("assets/starbhak_mart.png"),
          ),
          onAnimationEnd: () => debugPrint("On Fade In End"),
          nextScreen: const Nav(),
        ),
      ),
    );
  }
}
