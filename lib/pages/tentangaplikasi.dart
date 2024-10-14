import 'package:flutter/material.dart';

class Tentangaplikasi extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('tentang aplikasi'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Dibuat oleh: Mega Maharani'
            'Versi: 1.0',
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ),
      ), 
    );
  }
}