import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/widgets/calls_tile.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'calls',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const [
          Icon(Icons.qr_code),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.camera_alt),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.more_vert_outlined)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text('Recent'),
            ),
            CallsTile(
              callerName: 'steeve',
              callerProfilePic: profile2,
              calledtime: 'Today 5:02 Am',
              isvideocall: false,
              isIncoming: true,
              isMissed: true,
            ),
            CallsTile(
              callerName: 'steeve',
              callerProfilePic: profile2,
              calledtime: 'Today 5:00 Am',
              isvideocall: true,
              isIncoming: false,
              isMissed: false,
            ),
            CallsTile(
              callerName: 'Rick',
              callerProfilePic: profile3,
              calledtime: 'Yesterday 8:00 Pm',
              isvideocall: false,
              isIncoming: true,
              isMissed: false,
            ),
            CallsTile(
              callerName: 'Kimiko',
              callerProfilePic: profile5,
              calledtime: 'Yesterday 7:00 Pm',
              isvideocall: false,
              isIncoming: true,
              isMissed: true,
            ),
            CallsTile(
              callerName: 'katherine',
              callerProfilePic: profile6,
              calledtime: 'Yesterday 5:00 Pm',
              isvideocall: false,
              isIncoming: true,
              isMissed: true,
            ),
            CallsTile(
              callerName: 'shane',
              callerProfilePic: profile4,
              calledtime: 'Yesterday 4:00 Pm',
              isvideocall: true,
              isIncoming: false,
              isMissed: false,
            ),
            CallsTile(
              callerName: 'Liam',
              callerProfilePic: profile7,
              calledtime: 'Yesterday 2:00 Pm',
              isvideocall: false,
              isIncoming: true,
              isMissed: false,
            ),
            CallsTile(
              callerName: 'Mia',
              callerProfilePic: profile8,
              calledtime: 'Yesterday 12:00 Pm',
              isvideocall: false,
              isIncoming: true,
              isMissed: true,
            ),
            CallsTile(
              callerName: 'Emma',
              callerProfilePic: profile9,
              calledtime: 'Today 10:00 Am',
              isvideocall: false,
              isIncoming: true,
              isMissed: true,
            ),
            CallsTile(
              callerName: 'steeve',
              callerProfilePic: profile2,
              calledtime: 'June 23, 5:00 Am',
              isvideocall: true,
              isIncoming: false,
              isMissed: false,
            ),
            CallsTile(
              callerName: 'Rick',
              callerProfilePic: profile3,
              calledtime: 'June 20, 8:00 Am',
              isvideocall: false,
              isIncoming: true,
              isMissed: false,
            ),
            CallsTile(
              callerName: 'Kimiko',
              callerProfilePic: profile5,
              calledtime: 'June 18, 2:00 Pm',
              isvideocall: false,
              isIncoming: true,
              isMissed: true,
            ),
            CallsTile(
              callerName: 'katherine',
              callerProfilePic: profile6,
              calledtime: 'June 10, 5:00 Pm',
              isvideocall: false,
              isIncoming: true,
              isMissed: true,
            ),
            CallsTile(
              callerName: 'shane',
              callerProfilePic: profile4,
              calledtime: 'June 15, 4:00 Pm',
              isvideocall: true,
              isIncoming: false,
              isMissed: false,
            ),
          ],
        ),
      ),
    );
  }
}
