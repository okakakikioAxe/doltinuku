import 'package:doltinukuversi2/helper/stores.dart';
import 'package:doltinukuversi2/helper/document_checker.dart';
import 'package:doltinukuversi2/pages/login_page.dart';
import 'package:doltinukuversi2/pages/toko_dan_produk.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Akun extends StatelessWidget {
  final Function callback;
  Akun({Key? key, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        color: const Color.fromRGBO(253, 254, 255, 1),
        child: FirebaseAuth.instance.currentUser == null
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Mohon Log In terlebih dahulu"),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        child: const Text("Log in"))
                  ],
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Akun",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(10, 16, 52, 1)),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey.shade300),
                          child: Center(child: const Icon(Icons.person)
                              // FirebaseAuth
                              //             .instance.currentUser!.photoURL! ==
                              //         null
                              //     ? const Icon(Icons.person)
                              //     : CircleAvatar(
                              //         radius: 80,
                              //         backgroundImage: NetworkImage(FirebaseAuth
                              //             .instance.currentUser!.photoURL!),
                              //       )
                              ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FirebaseAuth.instance.currentUser != null
                                  ? FirebaseAuth
                                      .instance.currentUser!.displayName!
                                  : "kosong",
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Color.fromRGBO(10, 16, 52, 1),
                              ),
                              overflow: TextOverflow.ellipsis,
                              textScaleFactor: 0.8,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "Jenis member",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color.fromRGBO(0, 1, 252, 1),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  InkWell(
                    onTap: () {
                      print("object");
                    },
                    splashColor: Colors.blueAccent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 40,
                                offset: Offset(0, 8),
                                color: Color.fromRGBO(0, 0, 0, 0.04))
                          ]),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      alignment: Alignment.centerLeft,
                      height: 53,
                      width: double.infinity,
                      child: const Text(
                        "Pesanan",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {
                      print("object");
                    },
                    splashColor: Colors.blueAccent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 40,
                                offset: Offset(0, 8),
                                color: Color.fromRGBO(0, 0, 0, 0.04))
                          ]),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      alignment: Alignment.centerLeft,
                      height: 53,
                      width: double.infinity,
                      child: const Text(
                        "Pengembalian",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {
                      print("object");
                    },
                    splashColor: Colors.blueAccent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 40,
                                offset: Offset(0, 8),
                                color: Color.fromRGBO(0, 0, 0, 0.04))
                          ]),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      alignment: Alignment.centerLeft,
                      height: 53,
                      width: double.infinity,
                      child: const Text(
                        "Informasi Akun",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {
                      print("object");
                    },
                    splashColor: Colors.blueAccent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 40,
                                offset: Offset(0, 8),
                                color: Color.fromRGBO(0, 0, 0, 0.04))
                          ]),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      alignment: Alignment.centerLeft,
                      height: 53,
                      width: double.infinity,
                      child: const Text(
                        "Pengaturan",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {
                      print("object");
                    },
                    splashColor: Colors.blueAccent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 40,
                                offset: Offset(0, 8),
                                color: Color.fromRGBO(0, 0, 0, 0.04))
                          ]),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      alignment: Alignment.centerLeft,
                      height: 53,
                      width: double.infinity,
                      child: const Text(
                        "Bantuan",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () async {
                      await CRUD()
                          .setStoreName(FirebaseAuth.instance.currentUser!.uid);
                      //print(storeName);

                      callback(Toko(
                        callback: callback,
                        hasMarket: await checkIfStoreExists(
                            FirebaseAuth.instance.currentUser!.uid),
                      ));
                    },
                    splashColor: Colors.blueAccent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 40,
                                offset: Offset(0, 8),
                                color: Color.fromRGBO(0, 0, 0, 0.04))
                          ]),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      alignment: Alignment.centerLeft,
                      height: 53,
                      width: double.infinity,
                      child: const Text(
                        "Toko dan Produk",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        //googleSignIn.disconnect();
                        FirebaseAuth.instance.signOut();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: const Text("Logout"),
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                    ),
                  )
                ],
              ),
      ),
    ));
  }
}
