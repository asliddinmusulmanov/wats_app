import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/users.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  int colorindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121b22),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: colorindex == index
                                ? Colors.green
                                : Colors.white),
                        onPressed: () {
                          colorindex = index;
                          setState(() {});
                        },
                        child: Text(index == 0
                            ? 'All'
                            : index == 1
                                ? 'Unread'
                                : index == 2
                                    ? 'Contacts'
                                    : 'Grups'),
                      ),
                    );
                  }),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 27, top: 15),
            child: ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.archive_outlined,
                size: 30,
              ),
              title: const Text(
                "Archived",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              itemCount: Users.userList.length,
              itemBuilder: (context, index) {
                var item = Users.userList[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Padding(
                          padding: EdgeInsets.zero,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              item.image,
                            ),
                            radius: 35,
                          ),
                        ),
                        title: Text(
                          item.name,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w900),
                        ),
                        subtitle: Text(
                          item.subtitle,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MessengPage(
                                image: item.image,
                                name: item.name,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.message,
          color: Colors.black,
        ),
      ),
    );
  }
}

bool sms = false;

class MessengPage extends StatefulWidget {
  String image;
  String name;
  MessengPage({super.key, required this.image, required this.name});

  @override
  State<MessengPage> createState() => _MessengPageState();
}

class _MessengPageState extends State<MessengPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121b22),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Row(
          children: [
            CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(widget.image),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'onlayn',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            )
          ],
        ),
        actions: const [
          Icon(
            CupertinoIcons.video_camera,
            size: 40,
          ),
          SizedBox(width: 20),
          Icon(
            CupertinoIcons.phone,
            size: 30,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: const Column(
        children: [],
      ),
      bottomNavigationBar: SafeArea(
        child: Row(
          children: [
            const SizedBox(width: 10),
            const Icon(
              Icons.add,
              color: Colors.blue,
              size: 40,
            ),
            SizedBox(
              height: 30,
              width: 250,
              child: TextField(
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    setState(() {
                      sms = true;
                    });
                  } else {
                    setState(() {
                      sms = false;
                    });
                  }
                },
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            const Icon(
              CupertinoIcons.camera,
              color: Colors.blue,
              size: 30,
            ),
            const SizedBox(width: 20),
            Icon(
              sms ? Icons.telegram : Icons.mic,
              color: Colors.blue,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
