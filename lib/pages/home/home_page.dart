import 'package:cinemovie_app/pages/home/NavBar.dart';
import 'package:cinemovie_app/pages/home/widgets/body.dart';
import 'package:flutter/material.dart';




class HomePage extends StatelessWidget {
  final String nama;
  const HomePage({Key? key,required this.nama}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.red,
      ),
      body: HomeBody(),
      backgroundColor: Colors.red,
    );

  }
}

