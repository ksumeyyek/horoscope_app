import 'package:flutter/material.dart';
import 'package:proje/burc_item.dart';
import 'package:proje/data/strings.dart';

import 'burc.dart';
class BurcListesi extends StatelessWidget {
  late List<Burc> allBurclar;

  BurcListesi() {
    allBurclar = veriKayitHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burçlar Listesi"),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return BurcItem(listelenenBurc: allBurclar[index]);
          },
          itemCount: allBurclar.length,
        ),
      ),
    );
  }

  List<Burc> veriKayitHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcTarih = Strings.BURC_TARIHLERI[i];
      var burcKucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
      var burcBuyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';

      Burc eklenecekBurc =
      Burc(burcAdi, burcTarih, burcDetay, burcKucukResim, burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
  }

