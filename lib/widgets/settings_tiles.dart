import 'package:flutter/material.dart';

class SettingsTiles extends StatelessWidget {
  const SettingsTiles({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconname,
  });
  final String title;
  final String subtitle;
  final IconData iconname;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(title),
      subtitle: Text(subtitle),
      leading: Icon(iconname),
    );
  }
}
