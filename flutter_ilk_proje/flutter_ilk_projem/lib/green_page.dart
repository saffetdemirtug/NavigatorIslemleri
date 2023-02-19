import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Green Page AppBar"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(22),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://w0.peakpx.com/wallpaper/225/164/HD-wallpaper-neon-line-green-neon-beauty-black-dark-destruction-glow-green-line-the-xiaomi.jpg"),
              fit: BoxFit.cover),
        ),
        child: const Center(
            child: Text(
          "Green Page",
          style: TextStyle(
              fontSize: 54, color: Colors.green, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
