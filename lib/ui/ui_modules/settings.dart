import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    final screenWidth = MediaQuery.of(context).size.width;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        appBar: AppBar(
            leading: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 20,
            ),
            title: Center(
              child: Text(
                "Settings",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            actions: [
              Icon(
                Icons.notifications_outlined,
                color: Colors.white,
                size: 20,
              )
            ]),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/icons/download.jpg",
                      height: screenHeight * 0.25,
                      width: screenWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                SizedBox(
                  width: screenWidth,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/icons/usericon.png"),
                    ),
                    title: Text("John Richardson"),
                    subtitle: Text(
                      "johnrichrdson@domain.com",
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      size: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                SizedBox(
                  width: screenWidth,
                  child: Text(
                    "Account",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.025,
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: const Color.fromARGB(255, 29, 28, 28),
                    child: Image.asset("assets/icons/blueuser.png"),
                  ),
                  title: Text("Verify Your Account"),
                  subtitle: Text(
                    "Your account is verified",
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    size: 25,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: const Color.fromARGB(255, 29, 28, 28),
                    child: Image.asset("assets/icons/notification.png"),
                  ),
                  title: Text("Notification"),
                  subtitle: Text(
                    "Prefer your notify",
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    size: 25,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: const Color.fromARGB(255, 29, 28, 28),
                    child: Image.asset(
                      "assets/icons/email1.png",
                      height: 25,
                    ),
                  ),
                  title: Text("News Preference"),
                  subtitle: Text(
                    "what news you have to see about",
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
