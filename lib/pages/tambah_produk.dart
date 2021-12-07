import 'dart:io';
import 'package:doltinukuversi2/pages/toko_dan_produk.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class TambahProduk extends StatefulWidget {
  final Function callback;
  const TambahProduk({Key? key, required this.callback}) : super(key: key);
  @override
  TambahProdukState createState() => TambahProdukState();
}

class TambahProdukState extends State<TambahProduk> {
  final _formKey = GlobalKey<FormState>();
  String pesan = "";
  Future pickImageFromGalery() async {
    try {
      final image = await ImagePicker().pickImage(
          source: ImageSource.gallery,
          maxHeight: 104,
          maxWidth: 126,
          imageQuality: 40);
      if (image == null) return;

      final tempImage = File(image.path);
      setState(() {
        this.image = tempImage;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  Future pickImageFromCamera() async {
    try {
      final image = await ImagePicker().pickImage(
          source: ImageSource.camera,
          maxHeight: 104,
          maxWidth: 126,
          imageQuality: 40);
      if (image == null) return;

      final tempImage = File(image.path);
      setState(() {
        this.image = tempImage;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  void selectImageSource() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text(
          'Pilih foto produk anda',
          textAlign: TextAlign.center,
        ),
        content: SizedBox(
          height: 80,
          width: 230,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 5,
                child: ElevatedButton.icon(
                  onPressed: () {
                    pickImageFromCamera();
                    Navigator.pop(context);
                  },
                  label: const Text("Camera"),
                  icon: const Icon(Icons.camera),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 5,
                child: ElevatedButton.icon(
                  onPressed: () {
                    pickImageFromGalery();
                    Navigator.pop(context);
                  },
                  label: const Text("Galery"),
                  icon: const Icon(Icons.image),
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  void konfirmasi() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text(
          'Konfirmasi',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: SizedBox(
            height: 120,
            width: 230,
            child: Center(
              child: Text(
                "Pastikan informasi produk anda sudah benar.\n\nApakah anda yakin ingin megupload produk sekarang?",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            )),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              //print("Continue");

              setState(() {
                pesan = "continus 232323";
              });
              print(pesan);
              Navigator.pop(context);
              widget.callback(Toko(
                callback: widget.callback,
                hasMarket: true,
              ));
            },
            child: const Text('Continue'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  File? image;
  String? nama;
  String? deskripsi;
  int? harga;
  int? stok;
  String kategori = "Bumbu Dapur";

  List<String> listKategori = [
    "Bumbu Dapur",
    "Buah",
    "Peralatan Dapur",
    "Snack",
    "Oleh-Oleh Khas Minggirsari"
  ];

  bool preOrder = false;
  bool readyStock = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Tambah produk",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(10, 16, 52, 1)),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  const Divider(
                    height: 1,
                    color: Color.fromRGBO(224, 236, 248, 1),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  InkWell(
                      onTap: () {
                        selectImageSource();
                      },
                      child: image != null
                          ? Container(
                              width: 126,
                              height: 104,
                              decoration: const BoxDecoration(boxShadow: [
                                BoxShadow(
                                    blurRadius: 40,
                                    offset: Offset(0, 8),
                                    color: Color.fromRGBO(0, 0, 0, 0.04))
                              ]),
                              child: FittedBox(
                                child: Image.file(image!),
                                fit: BoxFit.fill,
                              ),
                            )
                          : DottedBorder(
                              padding: EdgeInsets.zero,
                              color: const Color.fromRGBO(0, 1, 252, 1),
                              radius: const Radius.circular(6),
                              child: Container(
                                width: 126,
                                height: 104,
                                decoration: const BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      blurRadius: 40,
                                      offset: Offset(0, 8),
                                      color: Color.fromRGBO(0, 0, 0, 0.04))
                                ]),
                                child: const Center(
                                  child: Text(
                                    "+ Upload foto",
                                    style: TextStyle(
                                        color: Color.fromRGBO(111, 144, 180, 1),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                            )),
                  const SizedBox(
                    height: 15,
                  ),
                  label("Nama Produk"),
                  TextFormField(
                    onChanged: (_value) {
                      setState(() {
                        nama = _value;
                      });
                    },
                    validator: (_value) {
                      if (_value!.isEmpty) {
                        return "nama tidak boleh kosong";
                      }
                      return null;
                    },
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w700),
                    decoration: formDecoration("Masukkan Nama Produk"),
                    maxLength: 300,
                    minLines: 1,
                    maxLines: 4,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  label("Deskripsi"),
                  TextFormField(
                    onChanged: (_value) {
                      setState(() {
                        deskripsi = _value;
                      });
                    },
                    validator: (_value) {
                      if (_value!.isEmpty) {
                        return "mohon isi deskripsi produk";
                      }
                      return null;
                    },
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w700),
                    decoration: formDecoration("Masukkan Deskripsi Produk"),
                    maxLength: 3000,
                    minLines: 1,
                    maxLines: 10,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  label("Kategori"),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                            width: 1, color: Color.fromRGBO(178, 207, 238, 1)),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(1, 53, 235, 0.08),
                              blurRadius: 40,
                              offset: Offset(0, 16))
                        ]),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: kategori,
                      underline: SizedBox(),
                      icon: const Icon(Icons.arrow_forward_ios_outlined,
                          color: Color.fromRGBO(33, 150, 243, 1)),
                      iconSize: 24,
                      style: const TextStyle(fontSize: 13, color: Colors.black),
                      onChanged: (String? newValue) {
                        setState(() {
                          kategori = newValue!;
                        });
                      },
                      items: listKategori
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  label("Harga"),
                  TextFormField(
                    onChanged: (_value) {
                      setState(() {
                        if (_value == null || _value.isEmpty) {
                          harga = 0;
                        } else {
                          harga = int.parse(_value);
                        }
                      });
                    },
                    validator: (_value) {
                      if (_value!.isEmpty) {
                        return "mohon isi kolom ini";
                      }
                      return null;
                    },
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w700),
                    decoration: formDecoration("Masukkan Harga Produk"),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  label("Stok Produk"),
                  TextFormField(
                    onChanged: (_value) {
                      setState(() {
                        nama = _value;
                      });
                    },
                    validator: (_value) {
                      if (_value!.isEmpty) {
                        return "produk tidak tersedia ?";
                      }
                      return null;
                    },
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w700),
                    decoration: formDecoration("Masukkan Stok Produk"),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  label("Sistem Produk"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 140,
                        height: 42,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: Color.fromRGBO(178, 207, 238, 1)),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Pre-Order",
                              style: TextStyle(
                                  color: preOrder
                                      ? Color.fromRGBO(150, 180, 238, 1)
                                      : Color.fromRGBO(177, 206, 238, 1),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700),
                            ),
                            Switch(
                                value: preOrder,
                                onChanged: (value) {
                                  setState(() {
                                    preOrder = value;
                                  });
                                })
                          ],
                        ),
                      ),
                      Container(
                        width: 140,
                        height: 42,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: Color.fromRGBO(178, 207, 238, 1)),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Ready Stock",
                              style: TextStyle(
                                  color: readyStock
                                      ? Color.fromRGBO(150, 180, 238, 1)
                                      : Color.fromRGBO(177, 206, 238, 1),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700),
                            ),
                            Switch(
                                value: readyStock,
                                onChanged: (value) {
                                  setState(() {
                                    readyStock = value;
                                  });
                                })
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(6)),
                    height: 42,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color.fromRGBO(0, 1, 252, 1)),
                        onPressed: () {
                          //if (_formKey.currentState!.validate()) {
                          //print("diterima");
                          konfirmasi();
                          //print(pesan);
                          //}
                        },
                        child: const Text("UPLOAD PRODUK",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w700))),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Container label(String title) => Container(
        margin: const EdgeInsets.only(left: 8, bottom: 10),
        child: Text(
          title,
          style: labelStyle,
        ),
      );
  TextStyle labelStyle =
      const TextStyle(fontSize: 13, fontWeight: FontWeight.w700);

  InputDecoration formDecoration(String _hintText) => InputDecoration(
        isDense: true,
        hintText: _hintText,
        hintStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(177, 206, 238, 1)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide:
                const BorderSide(color: Color.fromRGBO(178, 207, 238, 1))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide:
                const BorderSide(color: Color.fromRGBO(110, 110, 255, 1))),
      );
}
