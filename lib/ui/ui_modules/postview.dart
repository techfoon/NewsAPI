import 'package:flutter/material.dart';

class Postview extends StatefulWidget {
  @override
  State<Postview> createState() => _PostviewState();
}

class _PostviewState extends State<Postview> {
  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.height;

    var orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          size: 25,
        ),
        title: Center(
          child: Text(
            "Breaking News",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Image.asset(
            "assets/icons/share.png",
            width: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.bookmark_outline_rounded,
            size: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(238, 243, 255, 255),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/icons/cnbcNews.png",
                            height: 24,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Cnbc News",
                          style: TextStyle(
                              fontSize: 13,
                              color: const Color.fromARGB(97, 66, 58, 58)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          "assets/icons/rec.png",
                          height: 10,
                          width: 10,
                          color: const Color.fromARGB(97, 66, 58, 58),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "1h Ago",
                          style: TextStyle(
                              fontSize: 13,
                              color: const Color.fromARGB(97, 66, 58, 58)),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: const Color.fromARGB(238, 243, 255, 255),
                      ),
                      width: 70,
                      height: 30,
                      child: Center(
                          child: Text(
                        "Follow",
                        style: TextStyle(
                            fontSize: 13,
                            color: const Color.fromARGB(255, 31, 30, 30)),
                      )),
                    )
                  ],
                ),
                height: Orientation.portrait == orientation
                    ? ScreenHeight * 0.07
                    : ScreenHeight * 0.15,
              ),
              Container(
                child: Expanded(
                  child: Text(
                    "Scientist Just Found The Lost Species of Jellyfish The went Extinct 25 Million Years Ago!",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
                height: Orientation.portrait == orientation
                    ? ScreenHeight * 0.15
                    : ScreenHeight * 0.23,
                width: Orientation.portrait == orientation
                    ? ScreenWidth
                    : ScreenWidth * 2,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      "Monday,",
                      style: TextStyle(
                          fontSize: 13,
                          color: const Color.fromARGB(97, 66, 58, 58)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "24 March 2024",
                      style: TextStyle(
                          fontSize: 13,
                          color: const Color.fromARGB(97, 66, 58, 58)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      "assets/icons/rec.png",
                      height: 13,
                      color: const Color.fromARGB(97, 66, 58, 58),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      "assets/icons/heart.png",
                      height: 13,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "5.2K",
                      style: TextStyle(
                          fontSize: 13,
                          color: const Color.fromARGB(97, 66, 58, 58)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.chat_outlined,
                      size: 13,
                      color: const Color.fromARGB(97, 66, 58, 58),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "23K",
                      style: TextStyle(
                          color: const Color.fromARGB(97, 66, 58, 58)),
                    )
                  ],
                ),
                height: Orientation.portrait == orientation
                    ? ScreenHeight * 0.07
                    : ScreenHeight * 0.15,
              ),
              Container(
                height: Orientation.portrait == orientation
                    ? ScreenHeight * 0.30
                    : ScreenHeight * 0.62,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/img/thumbnail.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color.fromARGB(238, 243, 255, 255),
                            ),
                            width: 70,
                            height: 30,
                            child: Center(
                                child: Text(
                              "Animal",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: const Color.fromARGB(255, 31, 30, 30)),
                            )),
                          ),
                          SizedBox(width: 15),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color.fromARGB(238, 243, 255, 255),
                            ),
                            width: 70,
                            height: 30,
                            child: Center(
                                child: Text(
                              "Nature",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: const Color.fromARGB(255, 31, 30, 30)),
                            )),
                          )
                        ],
                      ),
                      Image.asset(
                        "assets/icons/heart.png",
                        width: 16,
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
