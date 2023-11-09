import 'package:flutter/material.dart';
import 'package:flutter_application_1/Desc.dart';
import 'package:flutter_application_1/Login.dart';
import 'package:flutter_application_1/Suhu.dart';
import '../Calculator.dart';
import '../Desc.dart';
import '../Bmi.dart';
import '../Cash.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Text(
              'Navigation',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Beranda'),
            onTap: () {
              // Tambahkan logika untuk menavigasi ke beranda di sini
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DashboardPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate), // Icon kalkulator
            title: Text('CalCulator'),
            onTap: () {
              // Tambahkan logika untuk menavigasi ke halaman kalkulator (kalkulator.dart)
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CalPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info), // Icon about
            title: Text('Tentang Saya'),
            onTap: () {
              // Tambahkan logika untuk menavigasi ke halaman about (about.dart)
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DecsPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate), // Icon BMI
            title: Text('BMI'),
            onTap: () {
              // Tambahkan logika untuk menavigasi ke halaman BMI (bmi.dart)
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BMICalculator(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate), // Icon Currency
            title: Text('Konversi Uang'),
            onTap: () {
              // Tambahkan logika untuk menavigasi ke halaman Currency (currency.dart)
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CurrencyConverterPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate), // Icon Currency
            title: Text('Suhu'),
            onTap: () {
              // Tambahkan logika untuk menavigasi ke halaman Currency (currency.dart)
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SuhuPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              // Tambahkan logika logout di sini
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
          ),
        ]),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selamat datang di Dashboard!',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
