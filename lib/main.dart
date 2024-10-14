import 'package:flutter/material.dart';
import 'package:template_project/pages/detailbuku.dart';
import 'package:template_project/pages/homepage.dart';
import 'package:template_project/pages/tentangaplikasi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalog Buku',
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
        '/detail': (context) => Detailbuku(),
        '/tentang': (context) => Tentangaplikasi(),
      },
    );
  }
}
