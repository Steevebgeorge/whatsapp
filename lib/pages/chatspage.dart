import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/widgets/chat_tiles.dart';
import 'package:whatsapp/widgets/popupbutton.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const PopUpButton(),
            SingleChildScrollView(
              child: Column(
                children: [
                  _searchBar(),
                  _archeivesection(),
                  _chats(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _archeivesection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Row(
        children: [
          Icon(Icons.archive_outlined),
          SizedBox(
            width: 10,
          ),
          Text('archived chats', style: TextStyle(fontSize: 15)),
          Spacer(),
          Text(
            '10',
            style: TextStyle(
                fontSize: 12, color: greenColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget _chats() {
    return SizedBox(
      child: Column(
        children: [
          ChatTiles(
              contactName: 'steeve',
              imagename: profile2,
              message: 'hey man',
              time: '5:00 Am',
              pendingMessage: 1),
          ChatTiles(
              contactName: 'Max',
              imagename: profile1,
              message: 'Hello',
              time: '2:00 Am',
              pendingMessage: 2),
          ChatTiles(
              contactName: 'Rick',
              imagename: profile3,
              message: 'ill send them this message',
              time: '9:00 Am',
              pendingMessage: 5),
          ChatTiles(
              contactName: 'shane',
              imagename: profile4,
              message: 'how have you been?',
              time: '12:00 Am',
              pendingMessage: null),
          ChatTiles(
              contactName: 'kimiko',
              imagename: profile5,
              message: 'Good Morning',
              time: '12:00 Am',
              pendingMessage: 1),
          ChatTiles(
              contactName: 'katherine',
              imagename: profile6,
              message: 'how was your day?',
              time: '3:00 Am',
              pendingMessage: null),
          ChatTiles(
              contactName: 'Liam',
              imagename: profile7,
              message: 'Thats great',
              time: '3:00 Am',
              pendingMessage: 4),
          ChatTiles(
              contactName: 'Mia',
              imagename: profile8,
              message: 'appreciate your effort.?',
              time: '3:00 Am',
              pendingMessage: 7),
          ChatTiles(
              contactName: 'Emma',
              imagename: profile9,
              message: 'good luck',
              time: '2:00 Am',
              pendingMessage: 2),
          ChatTiles(
              contactName: 'steeve',
              imagename: profile2,
              message: 'hey man',
              time: '5:00 Am',
              pendingMessage: 1),
          ChatTiles(
              contactName: 'diana',
              imagename: profile1,
              message: 'Hello',
              time: '2:00 Am',
              pendingMessage: 2),
          ChatTiles(
              contactName: 'Rick',
              imagename: profile3,
              message: 'ill send them this message',
              time: '9:00 Am',
              pendingMessage: 5),
          ChatTiles(
              contactName: 'shane',
              imagename: profile4,
              message: 'how have you been?',
              time: '12:00 Am',
              pendingMessage: null),
          ChatTiles(
              contactName: 'kimiko',
              imagename: profile5,
              message: 'Good Morning',
              time: '12:00 Am',
              pendingMessage: 1),
          ChatTiles(
              contactName: 'katherine',
              imagename: profile6,
              message: 'how was your day?',
              time: '3:00 Am',
              pendingMessage: null),
          ChatTiles(
              contactName: 'Liam',
              imagename: profile7,
              message: 'Thats great',
              time: '3:00 Am',
              pendingMessage: 4),
          ChatTiles(
              contactName: 'Mia',
              imagename: profile8,
              message: 'appreciate your effort.?',
              time: '3:00 Am',
              pendingMessage: 7),
          ChatTiles(
              contactName: 'Emma',
              imagename: profile9,
              message: 'good luck',
              time: '2:00 Am',
              pendingMessage: 2),
        ],
      ),
    );
  }

  Widget _searchBar() {
    return const SizedBox(
      width: double.infinity,
      height: 85,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xfff6f5f3),
            prefixIcon: Icon(Icons.search),
            hintText: 'search..',
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }
}
