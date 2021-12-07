import 'package:flutter/material.dart';

class TentangAplikasi extends StatefulWidget {
  const TentangAplikasi({Key? key}) : super(key: key);
  @override
  TentangAplikasiState createState() => TentangAplikasiState();
}

class TentangAplikasiState extends State<TentangAplikasi> {
  final pageController = PageController(initialPage: 0);
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              color: const Color.fromRGBO(24, 24, 24, 1),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 13,
                    child: PageView(
                      controller: pageController,
                      onPageChanged: (_pages) {
                        setState(() {
                          currentPage = _pages;
                        });
                      },
                      children: [
                        SizedBox(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 66,
                                ),
                                someText("Tentang Aplikasi", title: true),
                                const SizedBox(
                                  height: 31.94,
                                ),
                                SizedBox(
                                  width: 291,
                                  child: someText(
                                      "Doltinuku merupakan aplikasi jual beli produk yang memiliki tujuan sebagai wadah untuk mengangkat ekonomi dari UKM Desa Minggirsari "),
                                ),
                                const SizedBox(
                                  height: 78,
                                ),
                                Image.asset(
                                  "images/doltinuku white text.png",
                                  width: 180,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 66,
                                ),
                                someText("EKONOMI KREATIF", title: true),
                                SizedBox(
                                  height: 36.93,
                                ),
                                SizedBox(
                                  width: 250,
                                  child: someText(
                                      "Ekonomi kreatif adalah sebuah istilah yang menggambarkan pemanfaatan potensi yang ada di desa untuk dikembangkan"),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 66,
                                ),
                                someText("Potensi Desa", title: true),
                                SizedBox(
                                  height: 36.93,
                                ),
                                SizedBox(
                                  width: 340,
                                  child: someText(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy  text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            currentPage == 0
                                ? anotherPageIcon
                                : currentPageIcon,
                            const SizedBox(
                              width: 4,
                            ),
                            currentPage == 1
                                ? anotherPageIcon
                                : currentPageIcon,
                            const SizedBox(
                              width: 4,
                            ),
                            currentPage == 2 ? anotherPageIcon : currentPageIcon
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            if (currentPage < 2) {
                              pageController.jumpToPage(currentPage + 1);
                            } else {
                              Navigator.pushNamed(context, '/login-page');
                            }
                          },
                          child: const Text(
                            "Selanjutnya",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ))
                ],
              ))),
    );
  }

  Icon currentPageIcon = const Icon(
    Icons.circle,
    size: 5,
    color: Color.fromRGBO(255, 255, 255, 0.32),
  );

  Icon anotherPageIcon = const Icon(
    Icons.circle,
    size: 7,
    color: Colors.white,
  );

  Text someText(String _text, {bool title = false}) => Text(
        _text,
        style: TextStyle(
          fontWeight: title ? FontWeight.w700 : FontWeight.w300,
          fontSize: 18,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      );
}
