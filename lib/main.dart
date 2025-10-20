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
      debugShowCheckedModeBanner: false,
      title: 'Profil Mahasiswa',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profil Mahasiswa'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 27, 180, 201),
        ),
        body: Center(
          child: Card(
            elevation: 19, // bayangan card
            shadowColor: const Color.fromARGB(148, 20, 3, 170),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            margin: EdgeInsets.all(30),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/219/219983.png',
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Faiq M Arsyad',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    'Mahasiswa Informatika',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(thickness: 1.2, color: Colors.grey[300]),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email, color: Colors.blueAccent),
                      SizedBox(width: 8),
                      Text(
                        'ffaaiiqq@example.com',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      print('Lihat Detail ditekan');
                    },
                    icon: Icon(Icons.info_outline),
                    label: Text('Lihat Detail'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
