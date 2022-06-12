import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'Pages/call_screen.dart';
import 'Pages/camera_screen.dart';
import 'Pages/chat_screen.dart';
import 'Pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  IconData icon = Icons.message;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(() {
      if (_tabController.index == 0) {
        ImagePicker().pickImage(source: ImageSource.camera).then((file) {
          setState(() {
            _tabController.index = 1;
          });
        });
      } else if (_tabController.index == 1) {
        setState(() {
          icon = Icons.message;
        });
      } else if (_tabController.index == 2) {
        setState(() {
          icon = Icons.camera_alt;
        });
      } else if (_tabController.index == 3) {
        setState(() {
          icon = Icons.add_call;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          elevation: 0.7,
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: const [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              )
            ],
          ),
          actions: const [
            Icon(Icons.search),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            Icon(Icons.more_vert)
          ],
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            CameraScreen(),
            ChatScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
        floatingActionButton: buildFloatingButton());
  }

  Widget buildFloatingButton() {
    return _tabController.index == 2 ? Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 40,
          width: 40,
          child: FloatingActionButton(
            backgroundColor: Colors.grey,
            child: const Icon(
              Icons.create,
              color: Colors.white,
            ),
            onPressed: () {
              /*print("Open Chats")*/
            },
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          child: Icon(
            icon,
            color: Colors.white,
          ),
          onPressed: () {
            /*print("Open Chats")*/
          },
        ),
      ],
    ) : FloatingActionButton(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: () {
        /*print("Open Chats")*/
      },
    );
  }
}
