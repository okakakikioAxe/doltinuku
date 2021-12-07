import 'package:doltinukuversi2/pages/buat_akun.dart';
import 'package:doltinukuversi2/pages/home.dart';
import 'package:doltinukuversi2/pages/landing_page.dart';
import 'package:doltinukuversi2/pages/login_page.dart';
import 'package:doltinukuversi2/pages/masuk.dart';
import 'package:doltinukuversi2/pages/tentang_aplikasi.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'doltinukuversi2',
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Nunito"),
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) {
            return const LandingPage();
          },
          '/tentang-aplikasi': (BuildContext context) {
            return const TentangAplikasi();
          },
          '/login-page': (BuildContext context) {
            return const LoginPage();
          },
          '/buat-akun': (BuildContext context) {
            return const BuatAkun();
          },
          '/masuk-akun': (BuildContext context) {
            return const MasukAkun();
          },
          '/beranda': (BuildContext context) {
            return HomePage();
          },
        },
      );
}
