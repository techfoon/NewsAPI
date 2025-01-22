import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  //const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Icon(
                    Icons.notifications_outlined,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "assets/icons/download.jpg",
                  height: 200,
                  width: 400,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7CRpGBVoszryen_iI_aoCES8hHk6U9tVi4Q&s"),
                ),
                title: Text("John Richardson"),
                subtitle: Text("johnrichrdson@domain.com"),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  size: 25,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Account",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: ClipOval(
                  child: Container(
                    height: 50,
                    width: 50,
                    color: const Color.fromARGB(66, 131, 127, 127),
                    child: Icon(
                      Icons.person_2_outlined,
                      color: Colors.blue,
                    ),
                  ),
                ),
                title: Text(
                  "verify your account",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text("your account verified"),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: ClipOval(
                  child: Container(
                    height: 50,
                    width: 50,
                    color: const Color.fromARGB(66, 131, 127, 127),
                    child: Icon(
                      Icons.notifications_outlined,
                      color: Colors.blue,
                    ),
                  ),
                ),
                title: Text(
                  "Notification",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text("Preference your notify"),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  size: 25,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: ClipOval(
                  child: Container(
                    height: 50,
                    width: 50,
                    color: const Color.fromARGB(66, 131, 127, 127),
                    child: Icon(
                      Icons.newspaper_outlined,
                      color: Colors.blue,
                    ),
                  ),
                ),
                title: Text(
                  "News Prferences",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text("what news you want to see you about"),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  size: 25,
                ),
              ),
            ])) //

        );
  }
}
