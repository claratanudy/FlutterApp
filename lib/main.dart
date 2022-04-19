import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Panda Life'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(
            children: [
              Image(
                image: AssetImage('images/pandabobo.jpg'),
                ),
                Text('Tidur dulu gais'),
            ],
          )
        )
      )
    );
  }
}

// pakai link image bisa bgini didalam body > children > Image > image
// Image(image: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg'),
