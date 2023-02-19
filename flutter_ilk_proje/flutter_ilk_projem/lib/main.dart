import 'package:flutter/material.dart';

import 'package:flutter_ilk_projem/route_generator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      //home: AnaSayfa(),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade900,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Navigation Islemleri'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://i.hizliresim.com/lf39fns.jpg"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/redPage");
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (redContext) => RedPage(),
                  // ));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade600),
                child: const Text(
                  "Kırmızı Sayfa ",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/greenPage");
                  // Navigator.push(
                  //     context,
                  //     CupertinoPageRoute(
                  //         builder: (redContext) => const GreenPage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade600),
                child: const Text(
                  "Yeşil Sayfa",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/orangePage");
                  // Navigator.push(
                  //     context,
                  //     CupertinoPageRoute(
                  //         builder: (redContext) => const OrangePage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.shade600),
                child: const Text(
                  "Turuncu Sayfa !!",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/purplePage");
                  // Navigator.push(
                  //     context,
                  //     CupertinoPageRoute(
                  //         builder: (redContext) => const PurplePage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple.shade600),
                child: const Text(
                  "Mor Sayfa",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/yellowPage");
                  // Navigator.push(
                  //     context,
                  //     CupertinoPageRoute(
                  //         builder: (redContext) => const YellowPage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow.shade600),
                child: const Text(
                  "Sarı Sayfa",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      arguments: 60, context, "/ogrenciListesi");
                  // Navigator.push(
                  //     context,
                  //     CupertinoPageRoute(
                  //       builder: (context) => const OgrenciListesi(),
                  //       settings: const RouteSettings(arguments: 50),
                  //     ));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                child: const Text(
                  "Liste Oluştur",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
