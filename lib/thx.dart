import 'package:flutter/material.dart';

import 'home.dart';

class Thanks extends StatefulWidget{
  const Thanks({Key? key, required this.title}) : super(key: key);
  
  final String title;

  @override
  _ThanksState createState() => _ThanksState();
}

class _ThanksState extends State<Thanks>{
  @override
  void initState(){
    super.initState();
    _navigatetohomepage();
  }

  _navigatetohomepage() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder: (context) => HomePage(title: 'Bakmie Kim-An',)
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
        child: Container(
          margin: EdgeInsets.fromLTRB(30, 270, 30, 270),
          child: Center(
            child: Card(
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(35.0),
                child: Center(
                  child: Text(
                    'Terima Kasih, \nKami Akan Menghubungi Anda Dalam Waktu 1 x 24 jam',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Mulish',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}