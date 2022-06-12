import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/status_model.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTileAddStatusUpdate(),
          lineViewedUpdates(),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: statusData.length,
            shrinkWrap: true,
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
                          leading: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(2.5),
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(statusData[index].avatarUrl),
                              ),
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          title: Text(
                            statusData[index].name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            statusData[index].dayTime,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
          ),
          lineMutedUpdates(context)
        ],
      ),
    );
  }

  Widget buildTileAddStatusUpdate() {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              statusData[1].avatarUrl,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25, top: 25),
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.black45),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.add,
                size: 18,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      title: Text(
        statusData[1].name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: const Text(
        'Tap to add status update',
      ),
    );
  }

  Widget lineViewedUpdates() {
    return const Padding(
      padding: EdgeInsets.only(left: 12.0, top: 5, bottom: 5),
      child: Text(
        'Viewed updates',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
      ),
    );
  }

  Widget lineMutedUpdates(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 12.0, top: 5, bottom: 5),
          child: Text(
            'Muted updates',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(Icons.keyboard_arrow_down,
              color: Theme.of(context).colorScheme.primary),
        ),
      ],
    );
  }
}
