import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('comunities'),
        actions: const [
          Row(
            children: [
              Icon(Icons.qr_code),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.camera_alt),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.more_vert_outlined),
              SizedBox(
                width: 15,
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _newCommunity(),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {},
              title: const Text('Flutter Communities'),
              leading: Stack(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Icon(
                        Icons.groups_2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text('Flutter Developers'),
              subtitle: const Text('Learn about widgets today'),
              leading: SizedBox(
                width: 50,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    channel1,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              trailing: Column(
                children: [
                  const Text('12/5/2024'),
                  Container(
                    width: 23,
                    height: 25,
                    decoration: const BoxDecoration(
                      color: greenColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text('5'),
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text('Flutter Developers'),
              subtitle: const Text('Learn about widgets today'),
              leading: SizedBox(
                width: 50,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    channel2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              trailing: Column(
                children: [
                  const Text('10/6/2024'),
                  Container(
                    width: 23,
                    height: 25,
                    decoration: const BoxDecoration(
                      color: greenColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text('2'),
                    ),
                  )
                ],
              ),
            ),
            const Divider()
          ],
        ),
      ),
    );
  }

  Widget _newCommunity() {
    return ListTile(
      onTap: () {},
      title: const Text('new community'),
      leading: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration:
                BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const Icon(
                Icons.groups_2,
              ),
            ),
          ),
          Positioned(
              left: 27,
              top: 28,
              child: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                    color: Colors.green, shape: BoxShape.circle),
                child: const Icon(
                  Icons.add,
                  size: 15,
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}
