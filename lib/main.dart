import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:page_transition/page_transition.dart';


void main() {
  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return MaterialApp(

       home: SplashScreen(),
     );
   }
 }


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
         splash: Lottie.asset('asset/rg2.json'),


        backgroundColor: Colors.white,
        splashIconSize: 250,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        duration: 2000,
        nextScreen: Home());
  }
}
const colorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];

const colorizeTextStyle = TextStyle(
  fontSize: 25.0,
  fontFamily: 'Horizon',
);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
       title: SizedBox(

              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'OnlineMic',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,

                  ),
                  ColorizeAnimatedText(
                    'OnlineMic',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                  ColorizeAnimatedText(
                    'OnlineMic',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),

        ),
        body: Center(
            child: Text('My Home Page',
                style: TextStyle(color: Colors.black,
                    fontSize: 20.0))));
  }
}