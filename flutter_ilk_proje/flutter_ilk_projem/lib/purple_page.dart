import 'package:flutter/material.dart';

class PurplePage extends StatelessWidget {
  const PurplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Purple Page AppBar"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(22),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://i.hizliresim.com/agc2b47.jpg"),
              fit: BoxFit.cover),
        ),
        child: const Center(
            child: Text(
          "Purple Page",
          style: TextStyle(
              fontSize: 44, color: Colors.black, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
