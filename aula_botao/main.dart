// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(NavegacaoApp());

class NavegacaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navegacao - HomePage'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailPage()),
            );
          },
          child: const Text('Ir para DetailPage'),
        ),
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navegacao - DetailPage'),
      ),
      body: Center(
        child: Column(
         mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PaginaTeste()),
                );
              },
              child: const Text('PaginaTeste'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
             
              onPressed: () {},
              child: const Text('Voltar'),
            ),
           ],
          ),
        ),
      );
      }
      }
            



class PaginaTeste extends StatefulWidget {
  @override
  PaginaTestePage createState() => PaginaTestePage();
}
 class PaginaTestePage extends  State<StatefulWidget> {
   @override
   Widget build(BuildContext context){
     return Scaffold(
      appBar: AppBar(
        title: const Text('Navegacao - PaginaTeste'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
        child: const Text('Voltar'),
      ),
     ),
   );
   }
 }