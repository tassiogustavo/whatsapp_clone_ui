import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/call_model.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: callsData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const Divider(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(callsData[index].avatarUrl),
                      ),
                      title: Text(
                        callsData[index].name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Row(
                        children: [
                          Transform.rotate(
                            angle: callsData[index].isMissed ? 5.5: 2.3,
                            child: callsData[index].isMissed
                                ? const Icon(Icons.arrow_right_alt,
                                    color: Colors.green)
                                : const Icon(Icons.arrow_right_alt,
                                    color: Colors.red),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            callsData[index].timeDate,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Icon(Icons.call,
                        color: Theme.of(context).colorScheme.primary),
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
