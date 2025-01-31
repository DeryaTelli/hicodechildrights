import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hicodechildrights/anasayfa.dart';
import 'package:hicodechildrights/color.dart';
import 'package:hicodechildrights/log_in.dart';
import 'package:hicodechildrights/puzzle_page.dart';
import 'package:hicodechildrights/screens/matchingGameScreen.dart';
import 'package:hicodechildrights/tahminanasayfa.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
        foregroundColor: Colors.white,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: AppGradients.primaryGradient,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Drawer Header
            UserAccountsDrawerHeader(
              accountName:
                  Text(FirebaseAuth.instance.currentUser?.email ?? "Guest"),
              accountEmail: Text(
                  FirebaseAuth.instance.currentUser?.displayName ??
                      "Kullanıcı"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
              ),
            ),
            // Log Out Button
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Çıkış Yap'),
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LogInPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              children: [
                // Your existing buttons here
                _buildGridButton(
                  context,
                  color: Colors.pink[100]!,
                  icon: Icons.question_mark,
                  label: 'Tahmin Kartı',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tahminanasayfa()),
                    );
                  },
                  imageUrl: 'assets/images/zurafa.png',
                ),
                _buildGridButton(
                  context,
                  color: Colors.purple[100]!,
                  icon: Icons.extension,
                  label: 'Puzzle',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SlidePuzzle()),
                    );
                  },
                  imageUrl: 'assets/images/flamingo.png',
                ),
                _buildGridButton(
                  context,
                  color: Colors.grey[300]!,
                  icon: Icons.build,
                  label: 'Resimler Arasındaki Fark',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Anasayfa()),
                    );
                  },
                  imageUrl: 'assets/images/yilan.png',
                ),
                _buildGridButton(
                  context,
                  color: Colors.green[100]!,
                  icon: Icons.music_note,
                  label: 'Eşleştirme',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MatchingGameScreen()),
                    );
                  },
                  imageUrl: 'assets/images/kus.png',
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: Image.asset(
              'assets/images/kucukkiz.png',
              width: 200,
              height: 250,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridButton(
    BuildContext context, {
    required Color color,
    required IconData icon,
    required String label,
    required VoidCallback onTap,
    required String imageUrl,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icon,
                      size: 40,
                      color: AppColors.purple,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      label,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(16),
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: 45,
                    height: 45,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
