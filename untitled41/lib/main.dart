import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled41/DetaySayfa.dart';
import 'package:untitled41/sayacModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> SayacModel()),
      ],
      child: MaterialApp(
        home: Anasayfa(),
      ),
    );
  }
}

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Provider Example',
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
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Detaysayfa()));
                },
                child: Text('Geçiş Yap'))
          ],
        ),
      ),
    );
  }
}
