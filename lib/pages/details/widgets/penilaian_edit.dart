import 'package:flutter/material.dart';
import 'package:cinemovie_app/pages/details/widgets/penilaian_service.dart';
import 'package:provider/provider.dart';

class PenilaianEditPage extends StatefulWidget {
  const PenilaianEditPage({Key? key}) : super(key: key);

  @override
  State<PenilaianEditPage> createState() => _PenilaianEditPageState();
}

class _PenilaianEditPageState extends State<PenilaianEditPage> {
  final TextEditingController nilaiBaruController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Consumer<PenilaianService>(
          builder: (context, penilaian, child) => Column(
            children: [
              Text(penilaian.listPraktikan[penilaian.selectedIndex!]['nama']),
              const SizedBox(
                height: 20,
              ),
              const Text('Masukkan Durasi Sewa'),
              TextFormField(
                controller: nilaiBaruController,
                keyboardType: TextInputType.number,
              ),
              TextButton(
                  onPressed: () {
                    penilaian.updateNilaiPraktikan(penilaian.selectedIndex!,
                    int.parse(nilaiBaruController.text));
                    Navigator.pop(context);
                  },
                child: const Text('save data'),
              )
            ],
          ),
        ),
      ),
    );
  }
}