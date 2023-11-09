import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  void _showRegistrationSuccessDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pendaftaran Berhasil'),
          content: Text('Akun Anda telah berhasil didaftarkan.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Tutup'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      appBar: AppBar(
        title: Text('Pendaftaran'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username/email',
                labelStyle: TextStyle(color: Colors.white), // Warna teks label
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.white), // Warna border input
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white), // Warna border input saat focus
                ),
              ),
              style: TextStyle(color: Colors.white), // Warna teks input
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white), // Warna teks label
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.white), // Warna border input
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white), // Warna border input saat focus
                ),
              ),
              style: TextStyle(color: Colors.white), // Warna teks input
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Konfirmasi Kata Sandi',
                labelStyle: TextStyle(color: Colors.white), // Warna teks label
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.white), // Warna border input
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white), // Warna border input saat focus
                ),
              ),
              style: TextStyle(color: Colors.white), // Warna teks input
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Handle logika pendaftaran di sini
                String email = _emailController.text;
                String password = _passwordController.text;
                String confirmPassword = _confirmPasswordController.text;

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );

                if (password == confirmPassword) {
                  // Lakukan pendaftaran
                  _showRegistrationSuccessDialog();
                } else {
                  // Tampilkan pesan kesalahan jika kata sandi tidak sesuai
                }
              },
              child: Text('Daftar'),
            ),
          ],
        ),
      ),
    );
  }
}
