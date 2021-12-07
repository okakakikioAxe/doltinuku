import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'buat_akun.dart';
import 'masuk.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ["email"]);

  @override
  Widget build(BuildContext context) {
    GoogleSignInAccount? user = _googleSignIn.currentUser;

    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: const Color.fromRGBO(24, 24, 24, 1),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 30),
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Center(
                  child: Image.asset(
                    "images/doltinukuversi2 white text.png",
                    width: 180,
                  ),
                )),
            user != null
                ? Expanded(
                    flex: 11,
                    child: Center(
                      child: ElevatedButton(
                          onPressed: () async {
                            await _googleSignIn.signOut();
                            setState(() {
                              user = null;
                            });
                          },
                          child: Text("Logout")),
                    ))
                : Expanded(
                    flex: 11,
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
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
                              Navigator.pushNamed(context, '/buat-akun');
                            },
                            child: const Text(
                              "Buat Akun",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color.fromRGBO(0, 0, 0, 1)),
                            ),
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.blue,
                              primary: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 13),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 44,
                        ),
                        Container(
                          height: 53,
                          width: double.infinity,
                          decoration: const BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(1, 53, 235, 0.08),
                                offset: Offset(0, 16),
                                blurRadius: 40)
                          ]),
                          child: ElevatedButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("images/icons8-google-48.png"),
                                const SizedBox(
                                  width: 17.5,
                                ),
                                const Text(
                                  "Masuk dengan Google",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Color.fromRGBO(85, 85, 85, 1)),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.blue,
                              primary: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 13),
                            ),
                            onPressed: () async {
                              final googleUser = await _googleSignIn.signIn();
                              if (googleUser == null) {
                                return;
                              } else {
                                setState(() {
                                  user = googleUser;
                                });
                                final googleAuth =
                                    await googleUser.authentication;
                                final credential =
                                    GoogleAuthProvider.credential(
                                        accessToken: googleAuth.accessToken,
                                        idToken: googleAuth.idToken);

                                await FirebaseAuth.instance
                                    .signInWithCredential(credential);
                                Navigator.pushNamed(context, "/akun");
                              }
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        Container(
                          height: 53,
                          width: double.infinity,
                          decoration: const BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(1, 53, 235, 0.08),
                                offset: Offset(0, 16),
                                blurRadius: 40)
                          ]),
                          child: ElevatedButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "images/facebook-icon.png",
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 29,
                                ),
                                const Text(
                                  "Masuk dengan Facebook",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.blue,
                              primary: const Color.fromRGBO(65, 90, 147, 1),
                              padding: const EdgeInsets.symmetric(vertical: 13),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Sudah Punya Akun ? ",
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 18,
                                color: Color.fromRGBO(255, 244, 156, 1),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/masuk-akun');
                              },
                              child: const Text(
                                "Masuk",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18,
                                  color: Color.fromRGBO(255, 244, 156, 1),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
                  ),
            Expanded(
              flex: 1,
              child: Center(
                  child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/beranda');
                  },
                  child: const Text(
                    "Lewati Sekarang",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              )),
            )
          ],
        ),
      )),
    );
  }
}
