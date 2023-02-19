import 'package:flutter/material.dart';

class OgrenciListesi extends StatelessWidget {
  const OgrenciListesi({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    int elemanSayisi = ModalRoute.of(context)!.settings.arguments as int;

    List<Ogrenci> tumOgrenciler = List.generate(
        elemanSayisi,
        (index) => Ogrenci(
            index + 1, "İsim : ${index + 1}", "Soyisim : ${index + 1}"));
    // ignore: avoid_print
    print("Eleman sayısı $elemanSayisi");
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Öğrenci Listesi",
          ),
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                var secilen = tumOgrenciler[index];
                Navigator.pushNamed(context, "/ogrenciDetay",
                    arguments: secilen);
              },
              leading: CircleAvatar(
                child: Text(tumOgrenciler[index].id.toString()),
              ),
              title: Text(tumOgrenciler[index].isim),
              subtitle: Text(tumOgrenciler[index].soyisim),
            );
          },
          itemCount: elemanSayisi,
        ));
  }
}

class Ogrenci {
  int id = 0;
  String isim = " ";
  String soyisim = " ";

  Ogrenci(this.id, this.isim, this.soyisim);
}
