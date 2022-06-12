import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/chat_private_screen.dart';
import 'package:whatsapp_clone/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatPrivateScreen(index: index),
                ),
              );
            },
            child: Column(
              children: [
                const Divider(
                  height: 10,
                ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(dummyData[index].avatarUrl),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dummyData[index].name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        dummyData[index].time,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 14),
                      )
                    ],
                  ),
                  subtitle: Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      dummyData[index].message,
                      style: const TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
