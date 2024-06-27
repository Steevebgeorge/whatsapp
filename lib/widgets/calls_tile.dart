import 'package:flutter/material.dart';

class CallsTile extends StatelessWidget {
  const CallsTile({
    super.key,
    required this.callerName,
    required this.callerProfilePic,
    required this.calledtime,
    this.isvideocall = true,
    this.isIncoming = true,
    this.isMissed = true,
  });
  final String callerName;
  final String callerProfilePic;
  final String calledtime;
  final bool isvideocall;
  final bool isIncoming;
  final bool isMissed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {},
        leading: SizedBox(
          width: 50,
          height: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              callerProfilePic,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          callerName,
          style: TextStyle(color: isMissed ? Colors.red : Colors.black),
        ),
        subtitle: Row(
          children: [
            isIncoming
                ? Icon(
                    Icons.call_received_outlined,
                    color: isMissed ? Colors.red : Colors.green,
                  )
                : Icon(Icons.call_made,
                    color: isMissed ? Colors.red : Colors.green),
            Text(calledtime)
          ],
        ),
        trailing:
            isvideocall ? const Icon(Icons.videocam) : const Icon(Icons.call),
      ),
    );
  }
}
