import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/widgets/settings_tiles.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.search),
          ),
        ],
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _profileSection(),
            const Divider(),
            _settingstiles(),
          ],
        ),
      ),
    );
  }

  Widget _settingstiles() {
    return Column(
      children: [
        const SettingsTiles(
          title: 'Account',
          subtitle: 'security notifications, change number',
          iconname: Icons.key,
        ),
        const SettingsTiles(
          title: 'Privacy',
          subtitle: 'Block contacts, disapearing messages',
          iconname: Icons.lock,
        ),
        const SettingsTiles(
          title: 'Avatar',
          subtitle: 'Create, edit, profile photo',
          iconname: Icons.face,
        ),
        const SettingsTiles(
          title: 'Chats',
          subtitle: 'Theme, wallpapers, chat history',
          iconname: Icons.chat,
        ),
        const SettingsTiles(
          title: 'Notifications',
          subtitle: 'Message, group & call tones',
          iconname: Icons.notifications,
        ),
        const SettingsTiles(
          title: 'Storage and data',
          subtitle: 'Network usage, auto-download',
          iconname: Icons.pie_chart,
        ),
        const SettingsTiles(
          title: 'App language',
          subtitle: '''English (device's language)''',
          iconname: Icons.language,
        ),
        const SettingsTiles(
          title: 'Help',
          subtitle: 'Help centre, contact us, privacy policy',
          iconname: Icons.help_outline_outlined,
        ),
        ListTile(
          onTap: () {},
          title: const Text('invite a friend'),
          leading: const Icon(Icons.group),
        ),
        ListTile(
          onTap: () {},
          title: const Text('App updates'),
          leading: const Icon(Icons.security_update_good_outlined),
        ),
        const Text('Also from Meta'),
        ListTile(
          onTap: () {},
          title: const Text('open Instagram'),
          leading: const Icon(Icons.camera_alt),
        ),
        ListTile(
          onTap: () {},
          title: const Text('Open Facbook'),
          leading: const Icon(Icons.facebook),
        ),
      ],
    );
  }

  Widget _profileSection() {
    return ListTile(
      onTap: () {},
      title: const Text(
        'steeve',
        style: TextStyle(fontSize: 20),
      ),
      subtitle: const Text('''Hey there i'm using whatsapp'''),
      leading: SizedBox(
        width: 50,
        height: 50,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            profile2,
            fit: BoxFit.cover,
          ),
        ),
      ),
      trailing: const Icon(Icons.qr_code),
    );
  }
}
