import 'package:doltinukuversi2/pages/akun.dart';
import 'package:doltinukuversi2/pages/beranda.dart';
import 'package:doltinukuversi2/pages/login_page.dart';
import 'package:doltinukuversi2/pages/page2.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final _pageController = PageController(initialPage: 0);
  int pages = 0;
  int currentIndex = 0;

  int selectedIndex = 0;
  void selectTab(int index) {
    setState(() {
      index == 0
          ? currentPage = Beranda(callback: callback)
          : currentPage = Page2();
    });
  }

  Beranda? beranda;
  Widget? currentPage;

  @override
  void initState() {
    super.initState();
    beranda = Beranda(callback: callback);

    currentPage = beranda;
  }

  void callback(Widget nextPage) {
    setState(() {
      currentPage = nextPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: currentPage,
        bottomNavigationBar: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            color: const Color.fromRGBO(239, 245, 251, 1),
            height: 73,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipOval(
                  child: Material(
                    color: const Color.fromRGBO(
                        255, 255, 255, 0.1), // Button color
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          pages = 0;
                          currentPage = Beranda(callback: callback);
                        });
                      },
                      splashColor: Colors.blueAccent.shade100, // Splash color
                      child: SizedBox(
                          width: 56,
                          height: 56,
                          child: RotatedBox(
                            quarterTurns: -1,
                            child: Icon(
                              Icons.label_outline,
                              color:
                                  pages == 0 ? Colors.blueAccent : Colors.black,
                            ),
                          )),
                    ),
                  ),
                ),
                ClipOval(
                  child: Material(
                    color: const Color.fromRGBO(
                        255, 255, 255, 0.1), // Button color
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          pages = 1;
                        });
                      },
                      splashColor: Colors.blueAccent.shade100, // Splash color
                      child: SizedBox(
                          width: 56,
                          height: 56,
                          child: Icon(
                            Icons.search,
                            color:
                                pages == 1 ? Colors.blueAccent : Colors.black,
                          )),
                    ),
                  ),
                ),
                ClipOval(
                  child: Material(
                    color: const Color.fromRGBO(
                        255, 255, 255, 0.1), // Button color
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          pages = 2;
                        });
                      },
                      splashColor: Colors.blueAccent.shade100, // Splash color
                      child: SizedBox(
                          width: 56,
                          height: 56,
                          child: Icon(
                            Icons.local_grocery_store_outlined,
                            color:
                                pages == 2 ? Colors.blueAccent : Colors.black,
                          )),
                    ),
                  ),
                ),
                ClipOval(
                  child: Material(
                    color: const Color.fromRGBO(
                        255, 255, 255, 0.1), // Button color
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          pages = 3;
                          currentPage = Akun(
                            callback: callback,
                          );
                        });
                      },
                      splashColor: Colors.blueAccent.shade100, // Splash color
                      child: SizedBox(
                          width: 56,
                          height: 56,
                          child: Icon(
                            Icons.person_outline_rounded,
                            color:
                                pages == 3 ? Colors.blueAccent : Colors.black,
                          )),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
