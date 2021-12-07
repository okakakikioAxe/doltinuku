import 'package:doltinukuversi2/helper/stores.dart';
import 'package:doltinukuversi2/pages/toko_dan_produk.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class BuatToko extends StatefulWidget {
  final Function callback;
  const BuatToko({Key? key, required this.callback}) : super(key: key);
  @override
  BuatTokoState createState() => BuatTokoState();
}

class BuatTokoState extends State<BuatToko> {
  TextEditingController nama = TextEditingController();
  TextEditingController deskripsi = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Daftar Toko",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        fontFamily: "Roboto"),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  const Text(
                    "Nama Toko",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Nunito"),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  TextFormField(
                    controller: nama,
                    validator: (_value) {
                      if (_value!.isEmpty) {
                        return "nama toko tidak boleh kosong";
                      }
                      return null;
                    },
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700),
                    decoration: formDecoration("Nama Toko"),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    "Deskripsi",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Nunito"),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  TextFormField(
                    controller: deskripsi,
                    validator: (_value) {
                      if (_value!.isEmpty) {
                        return "mohon isi beberapa deskripsi";
                      }
                      return null;
                    },
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700),
                    decoration: formDecoration("Deskripsi Toko"),
                    maxLength: 500,
                    minLines: 1,
                    maxLines: 4,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 53,
              child: ElevatedButton(
                onPressed: () async {
                  await CRUD()
                      .regiterStore(nama: nama.text, deskripsi: deskripsi.text);

                  widget.callback(Toko(
                    callback: widget.callback,
                    hasMarket: false,
                  ));
                },
                child: const Text(
                  "Daftarkan Toko",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(1, 53, 235, 1)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration formDecoration(String _hintText) => InputDecoration(
        isDense: true,
        hintText: _hintText,
        hintStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(159, 159, 159, 1)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide:
                const BorderSide(color: Color.fromRGBO(167, 169, 190, 1))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide:
                const BorderSide(color: Color.fromRGBO(90, 90, 255, 1))),
      );
}
