import 'package:flutter/material.dart';
import 'package:flutter_application/forgotpw.dart';
import 'package:flutter_application/home.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                  'Sign In',
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
                  // padding: const EdgeInsets.all(10),
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  height: 50,
                  child: TextField(
                    controller: passwordController,
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
                        labelText: 'Password',
                    ),
                  ),


                ),

                TextButton(
                  onPressed: (){
                    Navigator.pushReplacement(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => ForgotPassword(title: 'Bakmie Kim-An',)
                          )
                        );
                  }, 
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: const Text('Forgot Password?', 
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), 
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    )
                  ),
                  )
                ),

                Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 63, 186, 126),
                    ),
                    child: const Text('LOGIN'),
                    onPressed: (){
                      print(emailController.text);
                      print(passwordController.text);
                      Navigator.pushReplacement(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => HomePage(title: 'Bakmie Kim-An',)
                          )
                        );
                    },
                  ),
                ),

                Row(
                  children: <Widget>[
                    const Text(
                    'Belum punya akun?', 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),),
                    ),
                    TextButton(
                      child: const Text(
                        'Daftar di sini',
                        style: TextStyle(
                          fontSize: 14, 
                          color: Color.fromARGB(255, 0, 0, 0), 
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onPressed: (){
                        Navigator.pushReplacement(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Register(title: 'Bakmie Kim-An',)
                          )
                        );
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),

                Row(
                  children: <Widget>[
                    const Text('ATAU', 
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),

                Container(
                    // padding: const EdgeInsets.all(20),
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 85),
                    child: FloatingActionButton.extended(
                      onPressed: () {},
                      icon: Image.asset(
                        'images/google.png',
                        height: 32,
                        width: 32,
                      ),
                      label: Text('Sign in with Google'),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                  ),

                Container(
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