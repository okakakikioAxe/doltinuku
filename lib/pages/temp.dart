/*
Container(
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
            )), */