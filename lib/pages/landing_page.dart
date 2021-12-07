import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 30),
        color: Colors.black,
        child: SizedBox(
            child: Column(
          children: [
            Expanded(
              flex: 12,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Doltinuku",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 42,
                        color: Color.fromRGBO(251, 246, 246, 1)),
                  ),
                  const Text("MINGGIRSARI",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          letterSpacing: 4,
                          color: Color.fromRGBO(251, 246, 246, 1))),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "images/LOGO BUMDES MINGGIRSARI 2021.jpg",
                    width: double.infinity,
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Center(
                  child: Container(
                    height: 53,
                    width: double.infinity,
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(1, 53, 235, 0.08),
                          offset: Offset(0, 16),
                          blurRadius: 40)
                    ]),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/tentang-aplikasi');
                      },
                      child: const Text(
                        "Tentang Aplikasi",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color.fromRGBO(7, 7, 7, 1)),
                      ),
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.blue,
                        primary: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 13),
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: 50,
            ),
            Expanded(
                flex: 1,
                child: Center(
                  child: InkWell(
                    onTap: () async {
                      if (FirebaseAuth.instance.currentUser != null) {
                        // signed in
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      } else {
                        Navigator.pushNamed(context, '/login-page');
                      }
                    },
                    child: const Text(
                      "Lewati",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(254, 252, 252, 1)),
                    ),
                  ),
                ))
          ],
        )),
      )),
    );
  }
}
