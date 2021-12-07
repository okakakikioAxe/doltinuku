import 'package:doltinukuversi2/pages/beranda.dart';
import 'package:doltinukuversi2/pages/kategori.dart';
import 'package:flutter/material.dart';

class PilihKategori extends StatelessWidget {
  final Function callback;
  PilihKategori({Key? key, required this.callback}) : super(key: key);
  final List<String> kategori = [
    "Semua",
    "Bumbu Dapur",
    "Buah",
    "Peralatan Dapur",
    "Snack",
    "Oleh-Oleh Khas Minggirsari"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: const EdgeInsets.all(16),
      color: const Color.fromRGBO(253, 254, 255, 1),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () {
                callback(Beranda(callback: callback));
              },
              child: const Icon(Icons.arrow_back, size: 48),
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: const Text(
              'Kategori',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w800),
            ),
          ),
          const SizedBox(
            height: 21,
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    callback(
                        Kategori(callback: callback, title: kategori[index]));
                  },
                  splashColor: Colors.blueAccent,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.all(24),
                    height: 71,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 40,
                              offset: Offset(0, 4),
                              color: Color.fromRGBO(0, 0, 0, 0.04))
                        ]),
                    child: Text(
                      kategori[index],
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color.fromRGBO(10, 16, 52, 1)),
                    ),
                  ),
                );
              },
              itemCount: kategori.length,
            ),
          )
        ],
      ),
    ));
  }
}
