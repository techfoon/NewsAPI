import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Text("Home"),
    );
  }
}
