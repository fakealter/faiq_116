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
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          title: Text('Profil Mahasiswa'),
          centerTitle: true,
          titleTextStyle: const TextStyle(fontSize: 20, color: Color.fromARGB(255, 252, 252, 252)),
          backgroundColor: const Color.fromARGB(255, 1, 42, 114),
        ),
        body: Center(
          child: Stack(
            clipBehavior: Clip.none, // memungkinkan avatar keluar dari card
            children: [
              Card(
                elevation: 18,
                shadowColor: const Color.fromARGB(66, 10, 32, 226),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 60),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 80, 20, 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Faiq M Arsyad',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Mahasiswa Informatika',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      SizedBox(height: 20),
                      Divider(thickness: 1.2),
                      // 🔹 Menu Section
                      ListTile(
                        leading: Icon(Icons.edit, color: const Color.fromARGB(255, 1, 42, 114)),
                        title: Text('Edit Profil'),
                        trailing: Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () => print('Edit Profil ditekan'),
                      ),
                      ListTile(
                        leading:
                            Icon(Icons.folder_shared, color: const Color.fromARGB(255, 1, 42, 114)),
                        title: Text('My Data'),
                        trailing: Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () => print('My Data ditekan'),
                      ),
                      ListTile(
                        leading: Icon(Icons.history, color: const Color.fromARGB(255, 1, 42, 114)),
                        title: Text('History'),
                        trailing: Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () => print('History ditekan'),
                      ),
                      ListTile(
                        leading: Icon(Icons.settings, color: const Color.fromARGB(255, 1, 42, 114)),
                        title: Text('Pengaturan'),
                        trailing: Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () => print('Pengaturan ditekan'),
                      ),
                    ],
                  ),
                ),
              ),
              // 🔹 Foto Profil Trimming di Atas Card
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundImage: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/219/219983.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
