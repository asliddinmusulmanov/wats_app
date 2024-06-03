import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

final List<String> statuses = [
  "Tap to add status update",
];

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121b22),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Status",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey,
              child: Padding(
                padding: EdgeInsets.zero,
                child: Stack(
                  children: [
                    Align(
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 56,
                      ),
                    ),
                    Align(
                      alignment: Alignment(1.1, 0.9),
                      child: Icon(
                        Icons.add_circle_sharp,
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
              ),
            ),
            title: const Text(
              "My status",
              style:
                  TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
            ),
            subtitle: Text(
              statuses[0],
              style: const TextStyle(color: Colors.white54),
            ),
            onTap: () {
              // Handle onTap action
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Channels",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Stay updated on topics that matter to you. Find \nchannels to follow below",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 46,
            width: 46,
            child: FloatingActionButton(
              backgroundColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              onPressed: () {},
              child: const Icon(
                CupertinoIcons.pencil,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: const Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
