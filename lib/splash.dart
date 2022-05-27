import 'package:flutter/material.dart';

import 'login.dart';
import 'main.dart';

class Splash extends StatefulWidget{
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash>{
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder: (context) => LoginPage(title: 'Bakmie Kim-An',)
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover),
        ),
        child: Center(
          child: Image(image: AssetImage('images/logo.png'),
          width: 300,
          ),
        ),
      )
    );
  }

}