import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:connection_failed/common_widgets/rounded_button.dart';
import 'package:connection_failed/screens/list_screens.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  static const id = 'welcome_screen';
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
      //upperBound: 100.0,
    );
    // animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'logo',
              child: Container(
                child: Image.asset('assets/logo/logo.png'),
                //height: animation.value * 100,
                height: 150,
                width: 150,
              ),
            ),
            TypewriterAnimatedTextKit(
              speed: Duration(seconds: 1),
              isRepeatingAnimation: false,
              textAlign: TextAlign.center,
              text: ['Wrong...!Ups'],
              textStyle: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.w900,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 60, right: 60),
              child: RoundedButton(
                colorButton: Colors.lightBlueAccent,
                textButton: '14 Ways',
                onPressed: () {
                  Navigator.pushNamed(context, ListScreens.id);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
