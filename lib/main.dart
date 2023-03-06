import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = "Play";
  String buttonName2 = "Anime";
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('The World'),
          backgroundColor: Colors.black,
        ),
        body: currentindex == 0 ?  Center(child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black,onPrimary: Colors.grey) ,
                onPressed: () {
                setState(() {
                  if (buttonName == "Play"){
                    buttonName = "Dio";}
                  else if (buttonName == "Dio"){
                    buttonName = "Play";
                }
              });
              },
            child: Text(buttonName),
      ),ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: (){
                  setState(() {
                      if (buttonName2 == "Anime"){
                      buttonName2 = "One Piece";}
                      else if (buttonName2 == "One Piece"){
                        buttonName2 = "Anime";
            }
        });
            }, child: Text(buttonName2))],),)) : Image.asset("images/Luffy.jpg",width: double.infinity,height: double.infinity,),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(Icons.settings))
          ],
          currentIndex: currentindex,
          onTap: (int index){
            setState(() {
              currentindex = index;
            });
          },
        ),
      ),
    );
  }
}
