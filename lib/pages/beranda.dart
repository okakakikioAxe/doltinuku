import 'dart:async';
import 'package:doltinukuversi2/pages/pilih_kategori.dart';
import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  final Function callback;
  const Beranda({Key? key, required this.callback}) : super(key: key);

  @override
  BerandaState createState() => BerandaState();
}

class BerandaState extends State<Beranda> {
  final _pageController = PageController(initialPage: 0);
  int pages = 0;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 6), (Timer timer) {
      if (_currentPage < 3) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 450),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: SizedBox(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          color: Color.fromRGBO(253, 254, 255, 1),
          child: const Text(
            "Beranda",
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: 110,
          child: PageView(
            onPageChanged: (pages) {
              setState(() {
                _currentPage = pages;
              });
            },
            controller: _pageController,
            children: [
              InkWell(
                onTap: () {
                  print("indomie");
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 1, 252, 1),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 80,
                            offset: Offset(0, 8),
                            color: Color.fromRGBO(0, 0, 0, 0.04))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Indomie",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              Text(
                                "Rp. 1.500 ,-",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.asset("images/indomie.jpg",
                                  alignment: Alignment.centerRight),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print("indomie");
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 1, 252, 1),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 80,
                            offset: Offset(0, 8),
                            color: Color.fromRGBO(0, 0, 0, 0.04))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Indomie",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              Text(
                                "Rp. 1.500 ,-",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Image.asset("images/indomie.jpg",
                              alignment: Alignment.centerRight)),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print("indomie");
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 1, 252, 1),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 80,
                            offset: Offset(0, 8),
                            color: Color.fromRGBO(0, 0, 0, 0.04))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Indomie",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              Text(
                                "Rp. 1.500 ,-",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Image.asset("images/indomie.jpg",
                              alignment: Alignment.centerRight)),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print("indomie");
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 1, 252, 1),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 80,
                            offset: Offset(0, 8),
                            color: Color.fromRGBO(0, 0, 0, 0.04))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Indomie",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                              Text(
                                "Rp. 1.500 ,-",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Image.asset("images/indomie.jpg",
                              alignment: Alignment.centerRight)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _currentPage == 0
                ? const Icon(
                    Icons.circle,
                    size: 7,
                    color: Color.fromRGBO(167, 169, 190, 1),
                  )
                : const Icon(
                    Icons.circle,
                    size: 5,
                    color: Color.fromRGBO(167, 169, 190, 0.32),
                  ),
            _currentPage == 1
                ? const Icon(
                    Icons.circle,
                    size: 7,
                    color: Color.fromRGBO(167, 169, 190, 1),
                  )
                : const Icon(
                    Icons.circle,
                    size: 5,
                    color: Color.fromRGBO(167, 169, 190, 0.32),
                  ),
            _currentPage == 2
                ? const Icon(
                    Icons.circle,
                    size: 7,
                    color: Color.fromRGBO(167, 169, 190, 1),
                  )
                : const Icon(
                    Icons.circle,
                    size: 5,
                    color: Color.fromRGBO(167, 169, 190, 0.32),
                  ),
            _currentPage == 3
                ? const Icon(
                    Icons.circle,
                    size: 7,
                    color: Color.fromRGBO(167, 169, 190, 1),
                  )
                : const Icon(
                    Icons.circle,
                    size: 5,
                    color: Color.fromRGBO(167, 169, 190, 0.32),
                  ),
          ],
        ),
        Container(
          padding: const EdgeInsetsDirectional.all(17),
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      ClipOval(
                        child: Material(
                          color: const Color.fromRGBO(
                              224, 236, 248, 1), // Button color
                          child: InkWell(
                            splashColor: Colors.blueAccent, // Splash color
                            onTap: () {
                              widget.callback(PilihKategori(
                                callback: widget.callback,
                              ));
                            },
                            child: const SizedBox(
                                width: 56,
                                height: 56,
                                child: Icon(
                                  Icons.format_list_bulleted,
                                  color: Color.fromRGBO(0, 1, 252, 1),
                                )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "Kategori",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(31, 83, 228, 1)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ClipOval(
                        child: Material(
                          color: const Color.fromRGBO(
                              224, 236, 248, 1), // Button color
                          child: InkWell(
                            splashColor: Colors.blueAccent, // Splash color
                            onTap: () {},
                            child: const SizedBox(
                                width: 56,
                                height: 56,
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: Color.fromRGBO(0, 1, 252, 1),
                                )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "Favorite",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(31, 83, 228, 1)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ClipOval(
                        child: Material(
                          color: const Color.fromRGBO(
                              224, 236, 248, 1), // Button color
                          child: InkWell(
                            splashColor: Colors.blueAccent, // Splash color
                            onTap: () {},
                            child: const SizedBox(
                                width: 56,
                                height: 56,
                                child: Icon(
                                  Icons.wallet_giftcard_outlined,
                                  color: Color.fromRGBO(0, 1, 252, 1),
                                )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "Point",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(31, 83, 228, 1)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ClipOval(
                        child: Material(
                          color: const Color.fromRGBO(
                              224, 236, 248, 1), // Button color
                          child: InkWell(
                            splashColor: Colors.blueAccent, // Splash color
                            onTap: () {},
                            child: const SizedBox(
                                width: 56,
                                height: 56,
                                child: Icon(
                                  Icons.group_outlined,
                                  color: Color.fromRGBO(0, 1, 252, 1),
                                )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "Toko",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(31, 83, 228, 1)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 47,
              ),
              const Text(
                "Promo",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Ink(
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.blueAccent,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6)),
                        width: 161,
                        height: screenHeight - 530,
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: const Color.fromRGBO(
                                            224, 236, 248, 1),
                                      ),
                                      width: 39,
                                      height: 22,
                                      child: const Center(
                                        child: Text(
                                          "-50%",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromRGBO(
                                                  31, 83, 228, 1)),
                                        ),
                                      ))),
                            ),
                            Expanded(
                              flex: 3,
                              child: Image.asset(
                                "images/indomie.jpg",
                                width: 130,
                                height: 130,
                              ),
                            ),
                            const Expanded(
                                flex: 1,
                                child: Center(
                                  child: Text(
                                    "Indomie",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Ink(
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, "/page3");
                      },
                      splashColor: Colors.blueAccent,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6)),
                        width: 161,
                        height: screenHeight - 530,
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: const Color.fromRGBO(
                                            224, 236, 248, 1),
                                      ),
                                      width: 39,
                                      height: 22,
                                      child: const Center(
                                        child: Text(
                                          "-50%",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromRGBO(
                                                  31, 83, 228, 1)),
                                        ),
                                      ))),
                            ),
                            Expanded(
                              flex: 3,
                              child: Image.asset(
                                "images/indomie.jpg",
                                width: 130,
                                height: 130,
                              ),
                            ),
                            const Expanded(
                                flex: 1,
                                child: Center(
                                  child: Text(
                                    "Indomie",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ],
    )));
  }
}
