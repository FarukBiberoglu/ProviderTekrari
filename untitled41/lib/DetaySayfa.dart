import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled41/sayacModel.dart';

class Detaysayfa extends StatelessWidget {
  const Detaysayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'İkinci Sayfa',
          style: TextStyle(color: Colors.pink),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<SayacModel>(
              builder: (context,sayacModelNesne,child){
                return  Text(
                '${sayacModelNesne.sayaciOku()}',
                style: TextStyle(fontSize: 36),
                );
              },
            ),
            Consumer<SayacModel>(
              builder: (context,sayacModelNesne,child){
                return
                  ElevatedButton(onPressed: () {
                    sayacModelNesne.sayaciArttir();
                  }, child: Text('Sayaç Arttır'));

              },
            ),   Consumer<SayacModel>(
              builder: (context,sayacModelNesne,child){
                return
                  ElevatedButton(onPressed: () {
                    sayacModelNesne.sayaciAzalt(1);
                  }, child: Text('Sayaç Azalt'));

              },
            ),
          ],
        ),
      ),
    );
  }
}
