import 'package:flutter/material.dart';
import "second_page.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PracticeApp",
      home: FirsrPage()
    );
  }
}

class FirsrPage extends StatelessWidget {
   const FirsrPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text("Anime"),
          backgroundColor: Colors.black,
        ),
        body:  Center(child: ElevatedButton(onPressed: ()
        {Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const SecondPage(),),);
        },
            child: const Text("Anime List"),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black)))
    );
  }
}



