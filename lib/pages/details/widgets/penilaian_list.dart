import 'package:cinemovie_app/pages/details/widgets/penilaian_edit.dart';
import 'package:flutter/material.dart';
import 'package:cinemovie_app/pages/details/widgets/penilaian_service.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class PenilaianListPage extends StatelessWidget {
  const PenilaianListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text('Jumlah Yang di Pesan'),
            Expanded(
                child: Consumer<PenilaianService>(
                  builder: (context, penilaian, _) => ListView.builder(
                    itemCount: penilaian.listPraktikan.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          penilaian.selectedIndex = index;
                          Navigator.push(
                            context,
                          MaterialPageRoute(
                              builder: (context) => const PenilaianEditPage()),
                          );
                        },
                        child: Container(
                          color: Colors.cyan[50],
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(penilaian.listPraktikan[index]['nama']),
                              ),
                              Text(penilaian.listPraktikan[index]['nilai']
                              .toString())
                            ]
                          ),
                        ),
                      );
                    },
                  ),
                )
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue.shade300,
              ),
              onPressed: () {

              },
              child: Text(
                'Buy',
                style: textStyle.copyWith(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}