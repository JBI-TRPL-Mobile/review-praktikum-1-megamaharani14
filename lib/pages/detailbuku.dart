import 'package:flutter/material.dart';
import 'package:template_project/models/isi.dart';

class Detailbuku extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final Isi isi = ModalRoute.of(context)!.settings.arguments as Isi;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Buku'),
        ),
        body:   Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text('Judul: ${isi.judul}', style: TextStyle(fontSize: 25)),
              SizedBox(height: 15),
              Text('Author: ${isi.author}', style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              Text('Deskripsi: ${isi.deskripsi}', style: TextStyle(fontSize:20 )),
              SizedBox(height: 10),
            ],
          ),
        ),
      );
    }
}