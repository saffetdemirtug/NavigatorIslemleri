import 'package:flutter/material.dart';

import 'ogrenci_listesi.dart';

class OgrenciDetay extends StatelessWidget {
  final Ogrenci secilenOgrenci;

  const OgrenciDetay({super.key, required this.secilenOgrenci});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Öğrenci Detay"),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 250),
        child: Center(
          child: Column(
            children: [
              Text(secilenOgrenci.id.toString(),
                  style: const TextStyle(fontSize: 25)),
              Text(secilenOgrenci.isim,
                  style: const TextStyle(fontSize: 25)),
              Text(secilenOgrenci.soyisim,
                  style: const TextStyle(fontSize: 25))
            ],
          ),
        ),
      ),
    );
  }
}
