import 'package:flutter/material.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orange Page AppBar"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(22),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://i.hizliresim.com/5363ug4.jpg"),
              fit: BoxFit.cover),
        ),
        child: Center(
            child: Column(
          children: [
            const Text(
              "Orange Page",
              style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/purplePage");
              },
              // ignore: sort_child_properties_last
              child: const Text("Mor Sayfaya git"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple.shade900),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/yellowPage", (route) => route.isFirst);
              },
              // ignore: sort_child_properties_last
              child: const Text(
                "Sarı Sayfa Anasayfadan Sonra Gelsin",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow.shade700),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(
                    context, (route) => route.settings.name == "/");
              },
              // ignore: sort_child_properties_last
              child: const Text(
                "Anasayfa",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade900),
            )
          ],
        )),
      ),
    );
  }
}
