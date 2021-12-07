import 'package:doltinukuversi2/pages/pilih_kategori.dart';
import 'package:flutter/material.dart';

class Kategori extends StatefulWidget {
  final Function callback;
  final String title;
  const Kategori({Key? key, required this.callback, required this.title})
      : super(key: key);
  @override
  KategoriState createState() => KategoriState();
}

class KategoriState extends State<Kategori> {
  String urut = "murah ke mahal";
  String filter = "";
//   Urutkan sesuai harga mahal ke murah
// Urutkan seuai harga murah ke mahal
// Urutkan sesuai tingkat popularitas

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Container(
      padding: const EdgeInsets.all(16),
      color: const Color.fromRGBO(253, 254, 255, 1),
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () {
                widget.callback(PilihKategori(callback: widget.callback));
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
            child: Text(
              widget.title,
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.w800),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 33,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                        width: 1.5,
                        color: const Color.fromRGBO(167, 169, 190, 1))),
                child: DropdownButton(
                    value: urut,
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                    ),
                    iconSize: 12,
                    style: const TextStyle(
                        fontSize: 12, color: Color.fromRGBO(167, 169, 190, 1)),
                    onChanged: (String? newValue) {
                      setState(() {
                        urut = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem<String>(
                          value: "murah ke mahal",
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Urutkan sesuai harga",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(167, 169, 190, 1)),
                                ),
                                Icon(Icons.arrow_downward,
                                    size: 12,
                                    color: Color.fromRGBO(167, 169, 190, 1)),
                                SizedBox(
                                  width: 5,
                                )
                              ])),
                      DropdownMenuItem<String>(
                          value: "mahal ke murah",
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Urutkan sesuai harga",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(167, 169, 190, 1)),
                                ),
                                Icon(
                                  Icons.arrow_upward,
                                  size: 12,
                                  color: Color.fromRGBO(167, 169, 190, 1),
                                ),
                                SizedBox(
                                  width: 5,
                                )
                              ])),
                      DropdownMenuItem<String>(
                          value: "popularitas",
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Urutkan sesuai popularitas",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(167, 169, 190, 1)),
                                ),
                                SizedBox(
                                  width: 5,
                                )
                              ])),
                    ]),
              ),
              Container(
                height: 33,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                        width: 1.5,
                        color: const Color.fromRGBO(167, 169, 190, 1))),
                child: Text("Filter"),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              for (int i = 0; i < 13; i++)
                Container(
                  color: Colors.blueAccent,
                  height: 200,
                  width: ((screenWidth - 32) / 2) - 10,
                  child: Center(
                    child: Text("$i"),
                  ),
                )
            ],
          ),
        ],
      ),
    ));
  }
}
