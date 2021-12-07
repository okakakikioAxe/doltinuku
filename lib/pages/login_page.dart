import 'package:doltinukuversi2/pages/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
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
                    "images/doltinuku white text.png",
                    width: 180,
                  ),
                )),
            Expanded(
              flex: 11,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 53,
                    width: double.infinity,
                    decoration: boxDecoration,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/buat-akun');
                      },
                      child: Text("Buat Akun",
                          style: buttonTextStyle(Colors.black)),
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
                    decoration: boxDecoration,
                    child: ElevatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/icons8-google-48.png"),
                          const SizedBox(
                            width: 17.5,
                          ),
                          Text("Masuk dengan Google",
                              style: buttonTextStyle(
                                  Color.fromRGBO(85, 85, 85, 1))),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.blue,
                        primary: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 13),
                      ),
                      onPressed: () async {
                        // final googleUser = await googleSignIn.signIn();

                        // if (googleUser == null) {
                        //   return;
                        // }
                        // setState(() {
                        //   user = googleUser;
                        // });
                        // final googleAuth = await googleUser.authentication;
                        // final credential = GoogleAuthProvider.credential(
                        //     accessToken: googleAuth.accessToken,
                        //     idToken: googleAuth.idToken);

                        // await FirebaseAuth.instance
                        //     .signInWithCredential(credential);

                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => HomePage()),
                        // );
                        print("login google");
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Container(
                    height: 53,
                    width: double.infinity,
                    decoration: boxDecoration,
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
                          Text("Masuk dengan Facebook",
                              style: buttonTextStyle(Colors.white)),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.blue,
                        primary: const Color.fromRGBO(65, 90, 147, 1),
                        padding: const EdgeInsets.symmetric(vertical: 13),
                      ),
                      onPressed: () {
                        //print(user);
                        print("login facebook");
                      },
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Text("Lewati Sekarang",
                      style: buttonTextStyle(Colors.white)),
                ),
              )),
            )
          ],
        ),
      )),
    );
  }

  TextStyle buttonTextStyle(Color color) {
    return TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: color);
  }

  BoxDecoration boxDecoration = const BoxDecoration(boxShadow: [
    BoxShadow(
        color: Color.fromRGBO(1, 53, 235, 0.08),
        offset: Offset(0, 16),
        blurRadius: 40)
  ]);
}
