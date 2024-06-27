import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/widgets/messages.dart';

class ContactChatScreen extends StatelessWidget {
  const ContactChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 5),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back),
          ),
        ),
        leadingWidth: 20,
        title: Padding(
          padding: const EdgeInsets.only(top: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  profile2,
                  height: 45,
                  width: 45,
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('steeve'),
                    Text(
                      ' online',
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        actions: const [
          Row(
            children: [
              Icon(Icons.videocam),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.call),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.more_vert_outlined),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/bgimg.jpg',
              ),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                width: 330,
                color: const Color.fromARGB(255, 246, 253, 222),
                padding: const EdgeInsets.all(8),
                child: const Text(
                  'Messages and calls are end to end encrypted. No one outside of this chat, not even whatsapp can read or listen to them. Tap to learn more',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13),
                ),
              ),
              //chats
              const ChatMessages(),
              const ChatMessages(),
              const ChatMessages(),
              const ChatMessages(),
              const ChatMessages(),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/bgimg.jpg',
              ),
              fit: BoxFit.cover),
        ),
        height: 100,
        child: Row(
          children: [
            SizedBox(
              width: 340,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Message',
                    prefixIcon: const Icon(Icons.emoji_emotions_outlined),
                    suffixIcon: const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.attach_file),
                          SizedBox(width: 10),
                          Icon(Icons.camera_alt),
                        ],
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.green, shape: BoxShape.circle),
                width: 55,
                height: 55,
                child: const Icon(
                  Icons.mic,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
