import 'package:doltinukuversi2/helper/users.dart';
import 'package:doltinukuversi2/pages/home.dart';
import 'package:flutter/material.dart';

class BuatAkun extends StatefulWidget {
  const BuatAkun({Key? key}) : super(key: key);
  @override
  BuatAkunState createState() => BuatAkunState();
}

class BuatAkunState extends State<BuatAkun> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nama = TextEditingController();
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
                  "Buat Akun",
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
                                "Nama Lengkap",
                                style: formLabelStyle,
                              ),
                              const SizedBox(
                                height: 7.5,
                              ),
                              TextFormField(
                                controller: nama,
                                style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                                decoration: InputDecoration(
                                  hintText: "Nama Lengkap",
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
                              if (_formKey.currentState!.validate()) {
                                Users()
                                    .emailSignUp(
                                        email: email.text,
                                        password: password.text,
                                        name: nama.text)
                                    .then((result) {
                                  if (result == null) {
                                    Navigator.push(
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
                              }
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

  TextStyle formLabelStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18);
}
