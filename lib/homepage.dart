import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/pages/chatspage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedpage = 0;

  final List<Widget> _pages = [
    const ChatsPage(),
    Container(),
    Container(),
    Container(),
  ];

  void _ontap(int index) {
    setState(() {
      _selectedpage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedpage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: greenColor,
        unselectedItemColor: blackColor,
        showUnselectedLabels: true,
        currentIndex: _selectedpage,
        onTap: _ontap,
        items: const [
          BottomNavigationBarItem(
            label: 'chats',
            icon: Icon(Icons.chat),
          ),
          BottomNavigationBarItem(
            label: 'updates',
            icon: Icon(Icons.update_sharp),
          ),
          BottomNavigationBarItem(
            label: 'communications',
            icon: Icon(Icons.groups),
          ),
          BottomNavigationBarItem(
            label: 'calls',
            icon: Icon(Icons.call_sharp),
          )
        ],
      ),
    );
  }
}
