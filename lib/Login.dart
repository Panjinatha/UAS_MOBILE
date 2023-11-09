import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dashboard.dart';
import 'package:flutter_application_1/Register.dart';
// import 'package:project_uts/home_page.dart';
//import 'package:project_uts/registration.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle:
                      TextStyle(color: Colors.white), // Warna teks label
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
                  labelStyle:
                      TextStyle(color: Colors.white), // Warna teks label
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
                obscureText: true,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardPage()),
                  );
                },
                child: Text('Login'),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  // Pindahkan pengguna ke halaman registrasi
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                    
                  );
                },
                child: Text(
                  'Belum punya akun? Silahkan registrasi',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
