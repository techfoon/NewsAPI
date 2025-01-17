import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> mPost = [
      {
        "source": {"id": "wired", "name": "Wired"},
        "author": "Dhruv Mehrotra",
        "title":
            "Facebook and Instagram Ads Push Gun Silencers Disguised as Car Parts",
        "description":
            "A network of Facebook pages has been advertising “fuel filters” that are actually meant to be used as silencers, which are heavily regulated by US law. Even US military officials are concerned.",
        "url":
            "https://www.wired.com/story/fuel-filter-gun-silencer-ads-facebook-instagram/",
        "urlToImage":
            "https://media.wired.com/photos/6761b9a4ef6ad9851b123fc6/191:100/w_1280,c_limit/security_fb_gunsilencer_gettyimages.jpg",
        "publishedAt": "2025-01-03T11:30:00Z",
        "content":
            "Experts believe the operation is based in China and relies on a drop-shipping scheme. Its likely just a reshipper selling controversial or illegal products, says Zach Edwards, a senior threat researcher."
      },
      {
        "source": {"id": null, "name": "BBC News"},
        "author": null,
        "title": "Jaguar Land Rover electric car whistleblower sacked",
        "description":
            "Mechanical engineer Hazar Denli lost his job after publishing online concerns about an electric car.",
        "url": "https://www.bbc.com/news/articles/c20nr3zdppjo",
        "urlToImage":
            "https://ichef.bbci.co.uk/news/1024/branded_news/34a7/live/c2921fc0-bc95-11ef-99d5-a19803fc6feb.png",
        "publishedAt": "2024-12-18T06:00:48Z",
        "content":
            "Mechanical engineer Hazar Denli says he was sacked after raising safety concerns..."
      },
      {
        "source": {"id": null, "name": "BBC News"},
        "author": null,
        "title": "Consultation launched over petrol car phase-out",
        "description":
            "The government says it will \"restore clarity\" for vehicle manufacturers and the charging industry.",
        "url": "https://www.bbc.com/news/articles/c5y7x3jgw7no",
        "urlToImage":
            "https://ichef.bbci.co.uk/news/1024/branded_news/d403/live/91aab6a0-c1aa-11ef-80e9-9bdd4c6ab679.jpg",
        "publishedAt": "2024-12-24T03:54:00Z",
        "content":
            "A consultation has been launched on the phasing-out of new petrol and diesel cars by 2030..."
      },
      {
        "source": {"id": null, "name": "Gizmodo.com"},
        "author": "Matt Novak",
        "title":
            "LA Man Says He Almost Missed His Flight After Waymo Drove Him in Circles",
        "description": "\"Is someone pulling a prank, is this car hacked?\"",
        "url":
            "https://gizmodo.com/la-man-says-he-almost-missed-his-flight-after-waymo-drove-him-in-circles-2000546519",
        "urlToImage":
            "https://gizmodo.com/app/uploads/2025/01/mike-johns-waymo.jpg",
        "publishedAt": "2025-01-06T20:25:12Z",
        "content":
            "A Los Angeles man who was trying to make his way to an Arizona airport in one of Waymo’s driverless taxis last month got stuck in an incredibly frustrating loop..."
      },
      {
        "source": {"id": "wired", "name": "Wired"},
        "author": "Jeremy White",
        "title": "Volvo EX90 Review: A Luxurious Tech-Heavy Ride",
        "description":
            "The electric SUV, the flagship of the Swedish brand, is the most connected and safe car Volvo has ever made. There’s so much to like, but we also have a few gripes.",
        "url": "https://www.wired.com/review/volvo-ex-90/",
        "urlToImage":
            "https://media.wired.com/photos/6761eceb7834d85243a98e74/191:100/w_1280,c_limit/volvo-ta-gear.jpg",
        "publishedAt": "2024-12-18T12:30:00Z",
        "content":
            "There is a glaring issue with the exterior, however: the lidar hump at the top of the windscreen..."
      }
    ];
    final screenHeight = MediaQuery.of(context).size.height;

    final screenWidth = MediaQuery.of(context).size.width;
    Orientation orientation = MediaQuery.of(context).orientation;

    TextEditingController mySearchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: Image.asset('assets/icons/guser.png')),
        title: RichText(
            text: TextSpan(
                text: "Welcome \n",
                style: TextStyle(color: Colors.grey, fontSize: 13),
                children: [
              TextSpan(
                text: "John Richardson!",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ])),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
            iconSize: 25,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: orientation == Orientation.portrait
                    ? screenHeight * 0.08
                    : screenHeight * 0.17,

                child: TextField(
                  controller: mySearchController,
                  decoration: InputDecoration(
                    hintText: "Let's see what happen Today",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.grey,
                    filled: true,
                    fillColor: const Color.fromARGB(248, 232, 232, 235),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none),
                  ),
                ),

//serach
              ),
              Container(
                height: orientation == Orientation.portrait
                    ? screenHeight * 0.05
                    : screenHeight * 0.11,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Breaking News !",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              Container(
                height: orientation == Orientation.portrait
                    ? screenHeight * 0.3
                    : screenHeight * 0.61,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: mPost.length,
                    itemBuilder: (_, index) {
                      return Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 200,
                            width: 300,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                mPost[index]["urlToImage"],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 25, horizontal: 25),
                            width: 320,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              136, 232, 232, 235),
                                          border:
                                              Border.all(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/icons/fire.png",
                                            height: 11,
                                          ),
                                          Text(
                                            "Nature",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  136, 232, 232, 235),
                                              border: Border.all(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Text(
                                            "Nature",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  136, 232, 232, 235),
                                              border: Border.all(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Text(
                                            "Animal",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 95,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(11)),
                                          child: Image.asset(
                                            "assets/icons/cnbcNews.png",
                                            height: 11,
                                          ),
                                        ),
                                        Text(
                                          " Cnbc News. 1h ago",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.heart_broken,
                                          color: Colors.white,
                                          size: 11,
                                        ),
                                        Text(
                                          "4k",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.message,
                                          color: Colors.white,
                                          size: 11,
                                        ),
                                        Text(
                                          "3.5k",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Expanded(
                                  child: Text(
                                    " Scientist Just Found The Lost Species of Jellyfish That Went Extinct 25 Million Years Ago!",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      );
                      /*    return Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.red,
                        height: 200,
                        width: 300,
                      );*/
                    }),
              ),
              Container(
                height: orientation == Orientation.portrait
                    ? screenHeight * 0.05
                    : screenHeight * 0.11,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending Right Now",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              Container(
                height: orientation == Orientation.portrait
                    ? screenHeight * 0.10
                    : screenHeight * 0.22,
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: mPost.length,
                    itemBuilder: (_, index) {
                      return SizedBox(
                        child: Container(
                          width: 75,
                          height: 20, // hieght is not working why?
                          //   padding: EdgeInsets.all(12),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(136, 232, 232, 235),
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              "Animal",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  return Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4, bottom: 4),
                            child: Container(
                              height:  orientation == Orientation.portrait
                    ?  screenHeight *
                                  0.15: screenWidth*0.31, 
                              width: screenWidth * 0.4,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.network(
                                  mPost[index]["urlToImage"],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )),
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${mPost[index]["title"].split(' ').take(3).join(' ')}",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "${mPost[index]["description"].split(' ').take(8).join(' ')}",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons
                                          .supervised_user_circle_outlined),
                                      Text(
                                        " Natalie.6h",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.grey),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.heart_broken),
                                      Text(
                                        "4k",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(Icons.message),
                                      Text(
                                        "3.5k",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
                itemCount: mPost.length,
              )
            ],
          ),
        ),
      ),
    );
  }
}
