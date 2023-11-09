import 'package:flutter/material.dart';

class PersonalDescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deskripsi Pribadi'),
      ),
      body: Center(
        child: DecsPage(),
      ),
    );
  }
}

class DecsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey, // Ganti warna latar belakang sesuai keinginan Anda
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100, // Ukuran lingkaran
            backgroundImage: AssetImage(
                'assets/profile_image.jpeg'), // Ganti dengan path ke foto pembuat Anda
          ),
          SizedBox(height: 20),
          Text(
            'Nama: I Komang Panji Natha Atmaja',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          Text(
            'Usia: 20 tahun',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          Text(
            'Pekerjaan: Mahasiswa Teknik Informatika',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          Text(
            'Lokasi: Bandung, Indonesia',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          Text(
            'Hobi: Memrogram, Tidur, Ngopi',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
