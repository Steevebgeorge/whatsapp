import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/pages/contact_chatscreen.dart';

class ChatTiles extends StatelessWidget {
  const ChatTiles({
    super.key,
    required this.contactName,
    required this.imagename,
    required this.message,
    required this.time,
    this.pendingMessage,
  });
  final String contactName;
  final String imagename;
  final String message;
  final String time;
  final int? pendingMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () => _chattap(context),
          leading: SizedBox(
            width: 50,
            height: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                imagename,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(contactName),
          subtitle: Text(
            message,
            style: const TextStyle(fontSize: 12),
          ),
          trailing: Column(
            children: [
              Text(time),
              pendingMessage == null
                  ? const SizedBox()
                  : Container(
                      width: 23,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: greenColor,
                        shape: BoxShape.circle,
                      ),
                      child: Center(child: Text(pendingMessage.toString())),
                    )
            ],
          ),
        )
      ],
    );
  }

  void _chattap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ContactChatScreen(),
      ),
    );
  }
}
