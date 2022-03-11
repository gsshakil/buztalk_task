import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey.withOpacity(0.2),
            child: icon,
          ),
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: const FaIcon(
            FontAwesomeIcons.angleRight,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Divider(),
        ),
      ],
    );
  }
}
