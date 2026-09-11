import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Data Mahasiswa',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE8A0B8),
        ),
      ),
      home: const DataMahasiswaPage(),
    );
  }
}

class DataMahasiswaPage extends StatelessWidget {
  const DataMahasiswaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFFE8A0B8),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          children: [
            Icon(Icons.school, size: 30),
            SizedBox(width: 12),
            Text(
              'Data Mahasiswa',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 30),
        child: Column(
          children: [
            // SELAMAT DATANG
            const Text(
              'Selamat Datang!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFC76B89),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Senang bisa melihat Anda di sini',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF9A7883),
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 30),

            // CARD DATA MAHASISWA
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: const Color(0xFFF3D5DE),
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 15,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // JUDUL CARD
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 18,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFEAF0),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.badge,
                          color: Color(0xFFD47D98),
                          size: 30,
                        ),
                        SizedBox(width: 12),
                        Text(
                          'Informasi Mahasiswa',
                          style: TextStyle(
                            color: Color(0xFFC76B89),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 22),

                  // NAMA
                  _DataItem(
                    icon: Icons.person,
                    iconColor: const Color(0xFFE08DA7),
                    backgroundColor: const Color(0xFFFFEAF0),
                    label: 'Nama Lengkap',
                    value: 'SILVY SERINA',
                  ),

                  const Divider(
                    height: 30,
                    color: Color(0xFFF2DDE3),
                  ),

                  // NIM
                  _DataItem(
                    icon: Icons.badge,
                    iconColor: const Color(0xFFD58DA3),
                    backgroundColor: const Color(0xFFFFF0F4),
                    label: 'NIM',
                    value: '701240033',
                  ),

                  const Divider(
                    height: 30,
                    color: Color(0xFFF2DDE3),
                  ),

                  // PROGRAM STUDI
                  _DataItem(
                    icon: Icons.school,
                    iconColor: const Color(0xFFD07892),
                    backgroundColor: const Color(0xFFFFEAF0),
                    label: 'Program Studi',
                    value: 'Sistem Informasi',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 35),

            // PESAN BAWAH
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.auto_awesome,
                  color: Color(0xFFE29AAF),
                  size: 20,
                ),
                SizedBox(width: 8),
                Text(
                  'Selamat belajar di Flutter!',
                  style: TextStyle(
                    color: Color(0xFF9A7883),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.favorite,
                  color: Color(0xFFE08DA7),
                  size: 18,
                ),
              ],
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}


// WIDGET UNTUK DATA MAHASISWA
class _DataItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final String label;
  final String value;

  const _DataItem({
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 58,
          height: 58,
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: 30,
          ),
        ),

        const SizedBox(width: 18),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  color: Color(0xFF9A7883),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 5),

              Text(
                value,
                style: const TextStyle(
                  color: Color(0xFF4A3038),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}