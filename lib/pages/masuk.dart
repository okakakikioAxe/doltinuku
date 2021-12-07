import 'package:doltinukuversi2/helper/users.dart';
import 'package:doltinukuversi2/pages/home.dart';
import 'package:flutter/material.dart';

class MasukAkun extends StatefulWidget {
  const MasukAkun({Key? key}) : super(key: key);
  @override
  MasukAkunState createState() => MasukAkunState();
}

class MasukAkunState extends State<MasukAkun> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        color: const Color.fromRGBO(24, 24, 24, 1),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 30),
        child: Column(
          children: [
            const Expanded(
                flex: 2,
                child: Center(
                    child: Text(
                  "Masuk",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ))),
            Expanded(
                flex: 12,
                child: Center(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 280,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: formLabelStyle,
                              ),
                              const SizedBox(
                                height: 7.5,
                              ),
                              TextFormField(
                                controller: email,
                                keyboardType: TextInputType.emailAddress,
                                style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  hintStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Colors.white),
                                  isDense: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: const BorderSide(
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 27.5,
                              ),
                              Text(
                                "Kata Sandi",
                                style: formLabelStyle,
                              ),
                              const SizedBox(
                                height: 7.5,
                              ),
                              TextFormField(
                                controller: password,
                                obscureText: true,
                                style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                                decoration: InputDecoration(
                                  hintText: "Kata Sandi",
                                  hintStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Colors.white),
                                  isDense: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: const BorderSide(
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 42,
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
                            onPressed: () {
                              Users()
                                  .emailSignIn(
                                email: email.text,
                                password: password.text,
                              )
                                  .then((result) {
                                if (result == null) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        result,
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      duration: Duration(seconds: 2),
                                    ),
                                  );
                                }
                              });
                            },
                            child: const Text(
                              "Masuk",
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
                          height: 35,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don’t have an account? ",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Color.fromRGBO(251, 223, 0, 1),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/buat-akun');
                              },
                              child: const Text(
                                "Sign-up",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color.fromRGBO(251, 223, 0, 1),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
            Expanded(
              flex: 1,
              child: Center(
                  child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/beranda');
                  },
                  child: const Text(
                    "Skip for now",
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

  TextStyle formLabelStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18);
}
