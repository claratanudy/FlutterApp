import 'package:flutter/material.dart';
import 'package:flutter_application/forgotpw.dart';
import 'package:flutter_application/home.dart';
import 'package:flutter_application/login.dart';
import 'package:flutter_application/thx.dart';
import 'register.dart';
import 'thx.dart';

class JoinPage extends StatefulWidget {
  const JoinPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<JoinPage> createState() => _JoinPageState();
}



class _JoinPageState extends State<JoinPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phonenumController = TextEditingController();
  TextEditingController addressFranchiseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 36),
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back), 
                    color: Colors.white,
                    onPressed: (){
                      Navigator.pushReplacement(
                            context, 
                            MaterialPageRoute(
                              builder: (context) => LoginPage(title: 'Bakmie Kim-An',)
                            )
                          );
                    }, 
                  ),
                ],
              ),
                
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Bergabung Dengan Kami',
                  style: TextStyle(
                    fontSize: 24, 
                    color: Colors.white, 
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Mulish',
                  ),
                ),
              ),

                Container(
                  padding: const EdgeInsets.all(10),
                  height: 60,
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 246, 246, 246),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Masukkan Nama',
                    ),
                  ),
                ),

                Container(
                  // padding: const EdgeInsets.all(10),
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  height: 50,
                  child: TextField(
                    controller: phonenumController,
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 246, 246, 246),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Masukkan No. Handphone',
                    ),
                  ),
                ),

                Container(
                  // padding: const EdgeInsets.all(10),
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  height: 81,
                  child: TextField(
                    controller: addressFranchiseController,
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 246, 246, 246),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Masukkan Alamat Rencana Franchise',
                    ),
                  ),
                ),

                Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 63, 186, 126),
                    ),
                    child: const Text('SUBMIT'),
                    onPressed: (){
                      print(nameController.text);
                      print(phonenumController.text);
                      print(addressFranchiseController.text);
                      Navigator.pushReplacement(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Thanks(title: 'Bakmie Kim-An',)
                          )
                        );
                    },
                  ),
                ),

                
                Container(
                  margin: EdgeInsets.only(top: 140),
                  child: Center(
                    child: Image(image: AssetImage('images/logo.png'),
                    width: 190,
                    ),
                  )
                ),
                
            ],
          )
          ),
        )

      );

  }
}