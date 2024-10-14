import 'package:flutter/material.dart';
import 'package:template_project/models/isi.dart';

class Homepage extends StatelessWidget{
    final List<Isi> isi = [
      Isi(
        judul: 'Fluter Basics', 
        author: 'John Doe', 
        deskripsi: 'A comprehensive guide for Flutter development',
        imageUrl: 'https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/07/18/875205522.jpg',
        
        ),
      Isi(
        judul: 'Laut Bercerita',
        author: 'Leila S.Chudori',
        deskripsi: 'Mengisahkan persahabatan, cinta, dan keluarga yang berhasil menggugah emosional pembaca',
        imageUrl: 'https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/07/18/875205522.jpg',
      ),
    ];

    @override
      Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Daftar Buku'),
          actions: [
            IconButton(
              icon: Icon(Icons.info),
              onPressed: (){
                Navigator.pushNamed(context, '/detailbuku');
              },
            )
          ],   
      ),
      body: ListView.builder(
        itemCount: isi.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(isi[index].judul),
            subtitle: Text(isi[index].author),
            onTap: (){
              Navigator.pushNamed(context, '/detailbuku', arguments: isi[index]);
            },
          );
        }, 
      ),
      ); 
  }
}