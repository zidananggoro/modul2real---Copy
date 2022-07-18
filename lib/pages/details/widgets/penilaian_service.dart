import 'package:flutter/material.dart';

class PenilaianService extends ChangeNotifier {
  int? selectedIndex;
  List<Map<String, dynamic>> listPraktikan = [
    {
      'nama' : 'Spiderman No Way Home',
      'nilai' : 0,
    },
    {
      'nama' : 'batman',
      'nilai' : 0,
    },


  ];

  void updateNilaiPraktikan(int index, int nilai) {
    List<Map<String,dynamic>> listTemp = [];
    for (var i = 0; i < listPraktikan.length; i++) {
      if (i == index) {
        listTemp.add({
          'nama' : listPraktikan[i]['nama'],
          'nilai' : nilai,
        });
        continue;
      }
      listTemp.add(listPraktikan[i]);

    }
    listPraktikan = listTemp;
    notifyListeners();
  }
}