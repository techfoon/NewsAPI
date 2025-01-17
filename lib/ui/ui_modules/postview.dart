import 'package:flutter/material.dart';

class Postview extends StatefulWidget {
  const Postview({super.key});

  @override
  State<Postview> createState() => _PostviewState();
}

class _PostviewState extends State<Postview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_back,
                size: 30,
              ),
              Text(
                "Breaking News",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(children: [
                Image.asset(
                  "assets/icons/share.png",
                  height: 20,
                  width: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.bookmark_outline_rounded,
                  size: 20,
                )
              ]),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 241, 243, 245),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Image.asset(
                            "assets/icons/cnbcNews.png",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Cnbc News",
                        style: TextStyle(
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
                            color: const Color.fromARGB(97, 66, 58, 58)),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: const Color.fromARGB(255, 241, 243, 245),
                    ),
                    width: 70,
                    height: 40,
                    child: Center(
                        child: Text(
                      "Follow",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(97, 66, 58, 58)),
                    )),
                  ),
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Scientist Just Found The Lost\nSpecies of Jellyfish The went\nExtinct 25 Million Years Ago!",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Monday,",
                  style: TextStyle(color: const Color.fromARGB(97, 66, 58, 58)),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "24 March 2024",
                  style: TextStyle(color: const Color.fromARGB(97, 66, 58, 58)),
                ),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  "assets/icons/rec.png",
                  height: 20,
                  width: 20,
                  color: const Color.fromARGB(97, 66, 58, 58),
                ),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  "assets/icons/heart.png",
                  height: 20,
                  width: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "5.2K",
                  style: TextStyle(color: const Color.fromARGB(97, 66, 58, 58)),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.chat_outlined,
                  color: const Color.fromARGB(97, 66, 58, 58),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "23K",
                  style: TextStyle(color: const Color.fromARGB(97, 66, 58, 58)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 200,
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                "assets/icons/images.jpeg",
                fit: BoxFit.fill,
              )),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 40,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 241, 243, 245),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "Animal",
                    style:
                        TextStyle(color: const Color.fromARGB(97, 66, 58, 58)),
                  )),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                    width: 70,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 241, 243, 245),
                    ),
                    child: Center(
                        child: Text(
                      "Nature",
                      style: TextStyle(
                          color: const Color.fromARGB(97, 66, 58, 58)),
                    )))
              ],
            ),
            Image.asset(
              "assets/icons/heart.png",
              height: 20,
              width: 20,
            ),
          ]),
        ]),
      ),
    );
  }
}