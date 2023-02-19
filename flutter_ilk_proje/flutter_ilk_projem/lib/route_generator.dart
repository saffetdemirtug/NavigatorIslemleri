import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ilk_projem/green_page.dart';
import 'package:flutter_ilk_projem/main.dart';
import 'package:flutter_ilk_projem/ogrenci_detay.dart';
import 'package:flutter_ilk_projem/ogrenci_listesi.dart';
import 'package:flutter_ilk_projem/orange_page.dart';
import 'package:flutter_ilk_projem/purple_page.dart';
import 'package:flutter_ilk_projem/red_page.dart';
import 'package:flutter_ilk_projem/yellow_page.dart';

class RouteGenerator {
  static Route<dynamic>? _routeOlustur(
      Widget gidilecekWidget, RouteSettings settings) {
    return CupertinoPageRoute(
      settings: settings,
      builder: (context) => gidilecekWidget,
    );
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        //case altına if-else süslü parantezleri ile defaultTargetPlatform yardımıyla iOS,Android ve WEB'e özel route animasyonları oluşturulabilir.

        return _routeOlustur(const AnaSayfa(), settings);

      case "/redPage":
        return _routeOlustur(RedPage(), settings);

      case "/greenPage":
        return _routeOlustur(const GreenPage(), settings);

      case "/orangePage":
        return _routeOlustur(const OrangePage(), settings);

      case "/purplePage":
        return _routeOlustur(const PurplePage(), settings);

      case "/yellowPage":
        return _routeOlustur(const YellowPage(), settings);

      case "/ogrenciListesi":
        return _routeOlustur(const OgrenciListesi(), settings);

      case "/ogrenciDetay":
        var parametredekiOgrenci = settings.arguments as Ogrenci;
        return _routeOlustur(
             OgrenciDetay(secilenOgrenci: parametredekiOgrenci,), 
            settings);

      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text("Error 404"),
              backgroundColor: Colors.red.shade900,
            ),
            body: const Center(
              child: Text(
                "404 \n"
                "Non Found Page ! ",
                style: TextStyle(fontSize: 30, color: Colors.red),
              ),
            ),
          ),
        );
    }
  }
}
