import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/widgets/channelstiles.dart';
import 'package:whatsapp/widgets/status_accounts.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('updates'),
        actions: const [
          Icon(Icons.qr_code),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.camera_alt),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.more_vert_rounded),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          _statusSection(),
          const Divider(),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Row(
                    children: [
                      Text(
                        'channels',
                        style: TextStyle(fontSize: 20),
                      ),
                      Spacer(),
                      Icon(Icons.add),
                    ],
                  ),
                ),
                Updatestiles(
                    title: 'Flutter Developers',
                    subtitle: 'Discuss Flutter Development',
                    imagename: channel1,
                    time: '5:00 am',
                    pendingMessage: 2),
                Updatestiles(
                    title: 'Flutter Projects',
                    subtitle: 'hey guys',
                    imagename: channel2,
                    time: '3:00 pm',
                    pendingMessage: 8),
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget _statusSection() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Text(
                  'status',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              const Spacer(),
              PopupMenuButton(
                itemBuilder: (ctx) =>
                    [const PopupMenuItem(child: Text('status privacy'))],
              )
            ],
          ),
          SizedBox(
            width: 400,
            height: 130,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StatusBoxes(
                    accountName: 'my status',
                    statustextName: status1,
                  ),
                  StatusBoxes(
                    accountName: 'diana',
                    statustextName: status2,
                  ),
                  StatusBoxes(
                    accountName: 'rick',
                    statustextName: status3,
                  ),
                  StatusBoxes(
                    accountName: 'kimiko',
                    statustextName: status4,
                  ),
                  StatusBoxes(
                    accountName: 'liam',
                    statustextName: status5,
                  ),
                  StatusBoxes(
                    accountName: 'katherine',
                    statustextName: status6,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
