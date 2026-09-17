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

  // TAMPILAN CARD PROFIL SAAT TOMBOL DIKLIK
  void _lihatProfil(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
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
                  color: Colors.black.withOpacity(0.10),
                  blurRadius: 15,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // JUDUL CARD
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 13,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFEAF0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Color(0xFFD47D98),
                        size: 28,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Profil Mahasiswa',
                        style: TextStyle(
                          color: Color(0xFFC76B89),
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // FOTO
                const CircleAvatar(
                  radius: 55,
                  backgroundColor: Color(0xFFFFEAF0),
                  backgroundImage: AssetImage(
                    'assets/foto_silvy.jpg',
                  ),
                ),

                const SizedBox(height: 18),

                // INFORMASI PROFIL
                const Text(
                  'SILVY SERINA',
                  style: TextStyle(
                    color: Color(0xFF4A3038),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                _ProfileDetail(
                  icon: Icons.badge,
                  label: 'NIM',
                  value: '701240033',
                ),

                const SizedBox(height: 10),

                _ProfileDetail(
                  icon: Icons.school,
                  label: 'Program Studi',
                  value: 'Sistem Informasi',
                ),

                const SizedBox(height: 10),

                _ProfileDetail(
                  icon: Icons.account_balance,
                  label: 'Fakultas',
                  value: 'Sains dan Teknologi',
                ),

                const SizedBox(height: 10),

                _ProfileDetail(
                  icon: Icons.account_balance_outlined,
                  label: 'Universitas',
                  value: 'UIN Sulthan Thaha Saifuddin Jambi',
                ),

                const SizedBox(height: 20),

                // TOMBOL TUTUP
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE8A0B8),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text('Tutup'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

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

            // PROFIL ATAS
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: const Color(0xFFF3D5DE),
                  width: 2,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Color(0xFFFFEAF0),
                    backgroundImage: AssetImage(
                      'assets/foto_silvy.jpg',
                    ),
                  ),

                  const SizedBox(width: 15),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selamat Datang!',
                          style: TextStyle(
                            color: Color(0xFFC76B89),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 5),

                        Text(
                          'SILVY SERINA',
                          style: TextStyle(
                            color: Color(0xFF4A3038),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 3),

                        Text(
                          '701240033',
                          style: TextStyle(
                            color: Color(0xFF9A7883),
                            fontSize: 14,
                          ),
                        ),

                        SizedBox(height: 3),

                        Text(
                          'Sistem Informasi',
                          style: TextStyle(
                            color: Color(0xFF9A7883),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // TOMBOL LIHAT PROFIL
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  _lihatProfil(context);
                },
                icon: const Icon(Icons.person),
                label: const Text('Lihat Profil'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE8A0B8),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // INFORMASI LAINNYA
            _InfoCard(
              title: 'Informasi Lainnya',
              icon: Icons.school,
              children: [
                _SimpleInfoItem(
                  icon: Icons.account_balance,
                  label: 'Fakultas',
                  value: 'Sains dan Teknologi',
                ),

                const Divider(
                  height: 25,
                  color: Color(0xFFF2DDE3),
                ),

                _SimpleInfoItem(
                  icon: Icons.account_balance_outlined,
                  label: 'Universitas',
                  value: 'UIN Sulthan Thaha Saifuddin Jambi',
                ),
              ],
            ),

            const SizedBox(height: 20),

            // HOBI DAN CITA-CITA SEJAJAR
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: _InfoCard(
                    title: 'Hobi',
                    icon: Icons.favorite,
                    children: [
                      const Text(
                        'Eating, snacking, watching movies, and going for walks',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF4A3038),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: _InfoCard(
                    title: 'Cita-cita',
                    icon: Icons.star,
                    children: [
                      const Text(
                        'Achieve my dreams, and make my family proud',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF4A3038),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

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


// WIDGET CARD PROFIL DETAIL
class _ProfileDetail extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _ProfileDetail({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF7FA),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: const Color(0xFFD47D98),
            size: 23,
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: Color(0xFF9A7883),
                    fontSize: 12,
                  ),
                ),

                const SizedBox(height: 2),

                Text(
                  value,
                  style: const TextStyle(
                    color: Color(0xFF4A3038),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// WIDGET CARD
class _InfoCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<Widget> children;

  const _InfoCard({
    required this.title,
    required this.icon,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: const Color(0xFFF3D5DE),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 13,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFFFEAF0),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: const Color(0xFFD47D98),
                  size: 27,
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFFC76B89),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 18),

          ...children,
        ],
      ),
    );
  }
}


// WIDGET INFORMASI
class _SimpleInfoItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _SimpleInfoItem({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            color: Color(0xFFFFEAF0),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Color(0xFFD47D98),
            size: 27,
          ),
        ),

        const SizedBox(width: 15),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  color: Color(0xFF9A7883),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 4),

              Text(
                value,
                style: const TextStyle(
                  color: Color(0xFF4A3038),
                  fontSize: 15,
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