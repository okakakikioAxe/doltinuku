import 'package:doltinukuversi2/pages/buat_toko.dart';
import 'package:doltinukuversi2/pages/tambah_produk.dart';
import 'package:flutter/material.dart';

String storeName = "";
int folower = 0;
int product = 0;

class Toko extends StatelessWidget {
  final Function callback;
  final bool hasMarket;
  Toko({
    Key? key,
    required this.callback,
    required this.hasMarket,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: !hasMarket
          ? Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Spertinya anda belum mendaftarkan toko",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                ElevatedButton(
                  child: Text("Daftarkan Toko"),
                  onPressed: () {
                    callback(BuatToko(
                      callback: callback,
                    ));
                  },
                ),
              ],
            ))
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Toko Saya",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(10, 16, 52, 1)),
                  ),
                  const SizedBox(
                    height: 24,
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
                          child: const Center(child: Icon(Icons.store)
                              // : CircleAvatar(
                              //     radius: 80,
                              //     backgroundImage: NetworkImage(
                              //         googleSignIn.currentUser!.photoUrl!),
                              //   )
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
                              // googleSignIn.currentUser != null
                              //     ? googleSignIn.currentUser!.displayName!
                              //     :
                              storeName,
                              style: TextStyle(
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
                            Row(
                              children: [
                                const Icon(
                                  Icons.group_outlined,
                                  color: Color.fromRGBO(0, 1, 252, 0.5),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  "$folower folower",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 1, 252, 1),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "Penjualan",
                    style: TextStyle(
                        color: Color.fromRGBO(111, 144, 180, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      width: double.infinity,
                      height: 127,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: const Color.fromRGBO(223, 235, 248, 1)),
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(1, 53, 235, 0.08),
                                offset: Offset(0, 8),
                                blurRadius: 40)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                    child: ClipOval(
                                      child: Material(
                                        color: const Color.fromRGBO(
                                            224, 236, 248, 1), // Button color
                                        child: InkWell(
                                          splashColor:
                                              Colors.blueAccent, // Splash color
                                          onTap: () {},
                                          child: const SizedBox(
                                              width: 56,
                                              height: 56,
                                              child: RotatedBox(
                                                quarterTurns: 2,
                                                child: Icon(
                                                  Icons.present_to_all_outlined,
                                                  color: Color.fromRGBO(
                                                      0, 1, 252, 1),
                                                ),
                                              )),
                                        ),
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                    child: ClipOval(
                                      child: Material(
                                        color: const Color.fromRGBO(
                                            224, 236, 248, 1), // Button color
                                        child: InkWell(
                                          splashColor:
                                              Colors.blueAccent, // Splash color
                                          onTap: () {},
                                          child: const SizedBox(
                                              width: 56,
                                              height: 56,
                                              child: Icon(
                                                Icons.payment_outlined,
                                                color: Color.fromRGBO(
                                                    0, 1, 252, 1),
                                              )),
                                        ),
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                    child: ClipOval(
                                      child: Material(
                                        color: const Color.fromRGBO(
                                            224, 236, 248, 1), // Button color
                                        child: InkWell(
                                          splashColor:
                                              Colors.blueAccent, // Splash color
                                          onTap: () {},
                                          child: const SizedBox(
                                              width: 56,
                                              height: 56,
                                              child: Icon(
                                                Icons.local_shipping_outlined,
                                                color: Color.fromRGBO(
                                                    0, 1, 252, 1),
                                              )),
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                    child: Text(
                                      "Pesanan baru",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                    child: Text(
                                      "Konfirmasi\npembayaran",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                    child: Text(
                                      "Siap dikirim",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 16,
                  ),
                  const Divider(
                    height: 1,
                    color: Color.fromRGBO(224, 236, 248, 1),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Produk",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Color.fromRGBO(111, 144, 180, 1)),
                      ),
                      InkWell(
                        onTap: () {
                          callback(TambahProduk(
                            callback: callback,
                          ));
                        },
                        child: const Text(
                          "Tambah Produk",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Daftar Produk",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            "$product produk",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                color: Color.fromRGBO(111, 144, 180, 1)),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color.fromRGBO(33, 150, 243, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Divider(
                    height: 1,
                    color: Color.fromRGBO(224, 236, 248, 1),
                  ),
                ],
              ),
            ),
    );
  }
}
