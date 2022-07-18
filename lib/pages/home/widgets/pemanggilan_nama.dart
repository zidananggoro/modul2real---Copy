import 'package:flutter/material.dart';
import 'package:cinemovie_app/repository/dummy_data.dart';

class PemanggilanNama extends StatelessWidget{
  final String nama;
  const PemanggilanNama({Key? key, required this.nama}) : super(key: key);

  @override
  Widget build (BuildContext context){
    return (
       Text(nama,
          style: TextStyle(fontSize: 20, color: Colors.white))
    );
  }
}