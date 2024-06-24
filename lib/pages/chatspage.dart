import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            _head(),
            _searchBar(),
            _archeivesection(),
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: SizedBox(
                      width: 50,
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          profile1,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: const Text('steeve'),
                    subtitle: const Text(
                      'hey man',
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: Column(
                      children: [
                        const Text('10:00 am'),
                        Container(
                          width: 23,
                          height: 25,
                          decoration: const BoxDecoration(
                            color: greenColor,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(child: Text('2')),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
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

  Widget _head() {
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
            itemBuilder: (ctx) => [
                  const PopupMenuItem(
                    child: Text("New Group"),
                  ),
                  const PopupMenuItem(
                    child: Text("New Broadcast"),
                  ),
                  const PopupMenuItem(
                    child: Text("Linked Devices"),
                  ),
                  const PopupMenuItem(
                    child: Text("Starred Messages"),
                  ),
                  const PopupMenuItem(
                    child: Text("Payments"),
                  ),
                  const PopupMenuItem(
                    child: Text("Settings"),
                  )
                ])
      ],
    );
  }
}
