import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Profil Mahasiswa')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                //backgroundImage: AssetImage('images/219983.png'),
                backgroundImage: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/512/219/219983.png',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Mochammad Fauzan',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text('Mahasiswa Informatika'),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  print('Lihat Detail ditekan');
                },
                icon: Icon(Icons.info),
                label: Text('Lihat Detail'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
