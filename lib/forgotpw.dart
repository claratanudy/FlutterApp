import 'package:flutter/material.dart';
import 'package:flutter_application/login.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}



class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();
  

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

              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'CHANGE PASSWORD',
                  style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),

              Container(
                  padding: const EdgeInsets.all(10),
                  height: 60,
                  child: TextField(
                    controller: emailController,
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
                        labelText: 'Masukkan Email',
                    ),
                  ),
                ),

                Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 63, 186, 126)
                    ),
                    child: const Text('SEND LINK'),
                    onPressed: (){
                      print(emailController.text);
                      Navigator.pushReplacement(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => LoginPage(title: 'Bakmie Kim-An',)
                          )
                        );
                    },
                  ),
                ),

                Row(
                  children: <Widget>[
                    const Text(
                      'Belum menerima link?', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'Kirim Ulang Disini',
                        style: TextStyle(
                          fontSize: 14, 
                          color: Color.fromARGB(221, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onPressed: (){
                        
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),

                Container(
                  margin: const EdgeInsets.only(top: 265),
                  child: Center(
                    child: Image(image: AssetImage('images/logo.png'),
                    width: 190,
                    ),
                  )
                ),

            ],
          ),
        ),
      ),
    );
  }


}