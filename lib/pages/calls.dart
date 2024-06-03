import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121b22),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xff00a884),
                child: Padding(
                  padding: EdgeInsets.zero,
                  child: Stack(
                    children: [
                      Align(
                        child: Icon(Icons.link),
                      ),
                    ],
                  ),
                ),
              ),
              title: Text(
                callTextLink[0],
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              subtitle: Text(
                callTextSms[0],
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 250),
            child: Text(
              "To start calling contacts who have\nWhatsApp, tap 📞 at the bottom of\n                  your screen",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w200,
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<String> callTextLink = ["Create call link"];
List<String> callTextSms = ["Share a link for your WhatsApp call"];
