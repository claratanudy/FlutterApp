import 'package:flutter/material.dart';
import 'package:flutter_application/join.dart';
import 'package:flutter_application/login.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          color: Colors.white 
        ),

        child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 43, 30, 36),
            child: ListView(
              physics: ClampingScrollPhysics(),
              children: <Widget>[
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Beranda',
                                    style: TextStyle(
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                ])
                        ),

                        Container(
                          width: 100.0,
                          height: 59.0,
                          alignment: Alignment(5, 27),
                          child: new Image.asset('images/logo.png'),
                        ),

                        Container(
                            child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 41,
                                    width: 41,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.grey,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                          offset:
                                              Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.person,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      size: 35,
                                    ),
                                  ),
                                  GestureDetector(
                                     onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => LoginPage(title: 'Bakmie Kim-An2',)),
                                     ),
                                      child: Card(
                                      elevation: 5,
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const SizedBox(
                                        width: 50,
                                        height: 20,
                                        child: Center(
                                            child: Text('Login',
                                                style: TextStyle(fontSize: 10))
                                        ),
                                      ),  
                                    ),
                                  ),
                                  
                                ],
                            ),
                        ),
                              

                      ]
                    ),
                ),

                Container(
                  alignment: Alignment(-1, 104),
                  margin: new EdgeInsets.fromLTRB(0, 30, 0, 30),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                        'Hi, User!',
                        style: TextStyle(fontFamily: 'Satisfy', fontSize: 17),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Ingin makan apa hari ini di Bakmie Kim An?',
                        style: TextStyle(fontFamily: 'Mulish', fontSize: 17),
                      ),
                      ]
                    ),
                ),


                Container(
                  height: 41,
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        fillColor:  Color.fromARGB(255, 177, 177, 177),
                        filled: true,
                        // hintText: 'Bakmie Karet, Es Teh Manis',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        labelText: 'Bakmie Karet, Es Teh Manis',
                        labelStyle: TextStyle(fontFamily: 'Mulish', fontSize: 17),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 31),
                  height: 120.0,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 32),
                        child: Column(
                          children: <Widget>[
                            Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: Color.fromARGB(255, 255, 255, 255),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Image(image: AssetImage('images/bakmie.jpg'),
                                        width: 80,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ),
                            Text(
                              'Bakmie',
                              style: TextStyle(
                              fontFamily: 'Mulish',
                              fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(right: 32),
                        child: Column(
                          children: <Widget>[
                            Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: Color.fromARGB(255, 255, 255, 255),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Image(image: AssetImage('images/nasi.jpg'),
                                        width: 80,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ),
                            Text(
                              'Nasi',
                              style: TextStyle(
                                fontFamily: 'Mulish',
                              fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(right: 32),
                        child: Column(
                          children: <Widget>[
                            Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: Color.fromARGB(255, 255, 255, 255),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Image(image: AssetImage('images/sidedish.jpg'),
                                        width: 80,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ),
                            Text(
                              'Side Dish',
                              style: TextStyle(
                                fontFamily: 'Mulish',
                              fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        child: Column(
                          children: <Widget>[
                            Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: Color.fromARGB(255, 255, 255, 255),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Image(image: AssetImage('images/minum.jpg'),
                                        width: 80,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ),
                            Text(
                              'Drink',
                              style: TextStyle(
                                fontFamily: 'Mulish',
                              fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                

                Container(
                  child: Text(
                    'Makanan Favorit Kami',
                    style: TextStyle(
                                fontFamily: 'Mulish',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 23,  bottom: 23),
                  height: 115.0,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                       padding: EdgeInsets.only(right: 15),
                       child: Card(
                        elevation: 5.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Image(image: AssetImage('images/mielebarfav.jpg'),
                                      width: 190,
                                    ),
                                  ),
                                  Text(
                                    'Bakmie Lebar Casiu',
                                    style: TextStyle(
                                fontFamily: 'Mulish',
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    'Rp. 40.000',
                                    style: TextStyle(
                                fontFamily: 'Mulish',
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      

                      Card(
                        elevation: 5.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Image(image: AssetImage('images/nascamhai.jpg'),
                                      width: 190,
                                    ),
                                  ),
                                  Text(
                                    'Nasi Campur Hainam',
                                    style: TextStyle(
                                fontFamily: 'Mulish',
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    'Rp. 55.000',
                                    style: TextStyle(
                                fontFamily: 'Mulish',
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ],
                          ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(bottom: 23),
                  child: Text(
                    'Minuman Favorit Kami',
                    style: TextStyle(
                                fontFamily: 'Mulish',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(bottom: 23),
                  height: 115.0,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Card(
                        elevation: 5.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Image(image: AssetImage('images/badak.jpg'),
                                      width: 190,
                                    ),
                                  ),
                                  Text(
                                    'Badak',
                                    style: TextStyle(
                                fontFamily: 'Mulish',
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    'Rp. 15.000',
                                    style: TextStyle(
                                    fontFamily: 'Mulish',
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ],
                          ),
                      ),
                      
                      ),
                      

                      Card(
                        elevation: 5.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Image(image: AssetImage('images/esteh.jpg'),
                                      width: 190,
                                    ),
                                  ),
                                  Text(
                                    'Es Teh Manis',
                                    style: TextStyle(
                                fontFamily: 'Mulish',
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    'Rp. 16.000',
                                    style: TextStyle(
                                fontFamily: 'Mulish',
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                      ),
                    ],
                  ),
                ),


                Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: const Text(
                      'Bergabung dengan Kami',
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: (){
                      Navigator.pushReplacement(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => JoinPage(title: 'Bakmie Kim-An',)
                          )
                        );
                    },
                  ),
                ),

                


              ],
            ),
        ),
        
      ),
    );
  }

  
}