import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RedPage extends StatelessWidget {
  RedPage({super.key});
  int _rastgeleSayi = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Red Page AppBar"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(22),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://i.hizliresim.com/44m011o.jpg"),
              fit: BoxFit.cover),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Red Page",
              style: TextStyle(
                  fontSize: 54,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            ElevatedButton(
              onPressed: () {
                _rastgeleSayi = Random().nextInt(100);
                // ignore: avoid_print
                print("Üretilen Sayı : $_rastgeleSayi");
                Navigator.of(context).pop(_rastgeleSayi);
              },
              child: const Text("Geri Dön"),
            ),
          ],
        )),
      ),
    );
  }
}
