import 'package:flutter/material.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Yellow Page AppBar",
          style: TextStyle(
            color: Colors.teal,
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(22),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://i.hizliresim.com/tsqwwdf."),
              fit: BoxFit.cover),
        ),
        child: const Center(
            child: Text(
          "Yellow Page",
          style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
