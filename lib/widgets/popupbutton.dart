import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/pages/settings.dart';

class PopUpButton extends StatelessWidget {
  const PopUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Whatsapp',
            style: TextStyle(
                fontSize: 20, color: greenColor, fontWeight: FontWeight.bold),
          ),
        ),
        const Spacer(),
        const Icon(Icons.qr_code),
        const SizedBox(
          width: 15,
        ),
        const Icon(Icons.camera_alt),
        PopupMenuButton(
          onSelected: (selected) {
            if (selected == 6) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Settings(),
                ),
              );
            }
          },
          itemBuilder: (ctx) => [
            const PopupMenuItem(
              value: 1,
              child: Text("New Group"),
            ),
            const PopupMenuItem(
              value: 2,
              child: Text("New Broadcast"),
            ),
            const PopupMenuItem(
              value: 3,
              child: Text("Linked Devices"),
            ),
            const PopupMenuItem(
              value: 4,
              child: Text("Starred Messages"),
            ),
            const PopupMenuItem(
              value: 5,
              child: Text("Payments"),
            ),
            const PopupMenuItem(
              value: 6,
              child: Text("Settings"),
            )
          ],
        )
      ],
    );
  }
}
