import 'package:flutter/material.dart';
import 'package:cinemovie_app/pages/details/widgets/penilaian_list.dart';
import 'package:cinemovie_app/pages/details/widgets/penilaian_service.dart';
import 'package:provider/provider.dart';

class Provider extends StatelessWidget {
  const Provider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
   return ChangeNotifierProvider<PenilaianService>(
     create: (_) => PenilaianService(),
     child: const MaterialApp(
       home: PenilaianListPage(),

     ),
   );
  }
}