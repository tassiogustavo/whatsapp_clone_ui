import 'package:flutter/material.dart';

import '../models/chat_model.dart';

class ChatPrivateScreen extends StatelessWidget {
  const ChatPrivateScreen({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Flex(
          direction: Axis.horizontal,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(dummyData[index].avatarUrl),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(dummyData[index].name),
            )
          ],
        ),
        elevation: 0.7,
        actions: const [
          Icon(Icons.videocam_rounded),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          Icon(Icons.call),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          Icon(Icons.more_vert),
          Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
        ],
      ),
      backgroundColor: Colors.grey,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 55,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8),
                      child: Icon(
                        Icons.emoji_emotions_outlined,
                        size: 30,
                        color: Colors.black45,
                      ),
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Message'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3.0, right: 3),
                      child: Transform.rotate(
                        angle: 2.5,
                        child: const Icon(
                          Icons.attach_file,
                          size: 30,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 3.0, right: 3),
                      child: Icon(
                        Icons.monetization_on,
                        size: 30,
                        color: Colors.black54,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 3.0, right: 10),
                      child: Icon(
                        Icons.camera_alt,
                        size: 30,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 60,
              width: 60,
              margin: const EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.mic,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
