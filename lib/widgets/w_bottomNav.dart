import 'package:flutter/material.dart';
import 'package:wats_app/pages/calls.dart';
import 'package:wats_app/pages/chats_page.dart';
import 'package:wats_app/pages/communities.dart';
import 'package:wats_app/pages/status_page.dart';

class WBottomNav extends StatefulWidget {
  const WBottomNav({super.key});

  @override
  State<WBottomNav> createState() => _WBottomNavState();
}

class _WBottomNavState extends State<WBottomNav> {
  List<Widget> pages = [
    const ChatsPage(),
    const StatusPage(),
    const CommunitiesPage(),
    const CallsPage(),
    Container(color: Colors.red),
    Container(color: Colors.indigoAccent),
    Container(color: Colors.amber)
  ];
  int currentIndex = 0;
  void ontap(index) {
    currentIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121b22),
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: false,
        backgroundColor: const Color(0xff1f2c34),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(width: 8)
        ],
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        backgroundColor: const Color(0xff1f2c34),
        unselectedItemColor: Colors.green,
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        selectedLabelStyle: const TextStyle(color: Colors.grey),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat_sharp), label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(Icons.signal_wifi_statusbar_4_bar), label: 'Status'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_sharp), label: 'Communities'),
          BottomNavigationBarItem(icon: Icon(Icons.call_sharp), label: 'Calls'),
        ],
        currentIndex: currentIndex,
        onTap: ontap,
      ),
    );
  }
}
