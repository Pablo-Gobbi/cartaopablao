import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'CARTÃO',
                    style: TextStyle(
                        fontSize: 10.0,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  Icon(
                    Icons.card_giftcard,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  Text(
                    'DIGITAL',
                    style: TextStyle(
                        fontSize: 10.0,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(
                height: 130,
                width: 80,
              ),
              // Expanded(
              //   child: Container(
              //     color: Colors.yellow,
              //   ),
              // ),
              const SizedBox(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('/images/pablo.png'),
                ),
              ),

              const Text(
                'Pablo Gobbi',
                style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Verdana',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const Text(
                'Técnico de Informática',
                style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Source Sans Pro',
                    //fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),

              const SizedBox(
                width: 30,
                height: 30,
              ),

              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    elevation: 15,
                    shadowColor: Colors.greenAccent),
                child: const Text(
                  'WhatsApp',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
              ),

              const SizedBox(
                width: 20,
                height: 20,
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset('assets/images/telefone.png'),
                ),
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset('assets/images/message.png'),
                ),
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset('assets/images/instagram.png'),
                ),
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset('assets/images/facebook.png'),
                ),
              ]),
            ],
          ),
        ));
  }
}
