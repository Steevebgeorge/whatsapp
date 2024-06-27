import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 25, top: 20),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.receive),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 25, right: 10),
              color: Colors.white,
              child: const Text(
                'Hello there!. How are you man?. How is work?.',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 20),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 25, right: 10),
              color: const Color.fromARGB(255, 189, 248, 215),
              child: const Text(
                'Hello there!. How are you man?. How is work?.',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        )
      ],
    );
  }
}
