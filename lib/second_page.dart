import "package:flutter/material.dart";

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anime List"),
        backgroundColor: Colors.black,
      ),
      body: const Center(
        child: Text("Hello World"),
      ),
    );
  }
}