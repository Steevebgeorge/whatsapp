import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';

class Updatestiles extends StatelessWidget {
  const Updatestiles(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imagename,
      required this.time,
      required this.pendingMessage});
  final String title;
  final String subtitle;
  final String imagename;
  final String time;
  final int pendingMessage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(title),
      subtitle: Text(subtitle),
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
      trailing: Column(
        children: [
          Text(time),
          Container(
            width: 23,
            height: 25,
            decoration: const BoxDecoration(
              color: greenColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                pendingMessage.toString(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
