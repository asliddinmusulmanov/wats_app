import 'package:flutter/material.dart';

class CommunitiesPage extends StatefulWidget {
  const CommunitiesPage({super.key});

  @override
  State<CommunitiesPage> createState() => _CommunitiesPageState();
}

class _CommunitiesPageState extends State<CommunitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff121b22),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/2024-03-29 22.25.54.jpg",
            height: 750,
            width: 430,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.green,
                    backgroundColor: Colors.transparent),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 90, vertical: 15),
                  child: Text("                                       "),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
