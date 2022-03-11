import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Jumborton(),
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              radius: 25,
              child: FaIcon(FontAwesomeIcons.accessibleIcon),
            ),
            title: Text('Clocking'),
            subtitle: Text('Keep track of your working hours'),
            trailing: FaIcon(FontAwesomeIcons.angleRight),
          ),
          MarginedDivider(),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: FaIcon(FontAwesomeIcons.accessibleIcon),
            ),
            title: Text('Clocking'),
            subtitle: Text('Keep track of your working hours'),
            trailing: FaIcon(FontAwesomeIcons.angleRight),
          ),
          MarginedDivider(),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: FaIcon(FontAwesomeIcons.accessibleIcon),
            ),
            title: Text('Clocking'),
            subtitle: Text('Keep track of your working hours'),
            trailing: FaIcon(FontAwesomeIcons.angleRight),
          ),
          MarginedDivider(),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: FaIcon(FontAwesomeIcons.accessibleIcon),
            ),
            title: Text('Clocking'),
            subtitle: Text('Keep track of your working hours'),
            trailing: FaIcon(FontAwesomeIcons.angleRight),
          ),
          MarginedDivider(),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: FaIcon(FontAwesomeIcons.accessibleIcon),
            ),
            title: Text('Clocking'),
            subtitle: Text('Keep track of your working hours'),
            trailing: FaIcon(FontAwesomeIcons.angleRight),
          ),
          MarginedDivider(),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: FaIcon(FontAwesomeIcons.accessibleIcon),
            ),
            title: Text('Clocking'),
            subtitle: Text('Keep track of your working hours'),
            trailing: FaIcon(FontAwesomeIcons.angleRight),
          ),
          MarginedDivider(),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: FaIcon(FontAwesomeIcons.accessibleIcon),
            ),
            title: Text('Clocking'),
            subtitle: Text('Keep track of your working hours'),
            trailing: FaIcon(FontAwesomeIcons.angleRight),
          ),
          MarginedDivider(),
        ],
      ),
    );
  }
}

class MarginedDivider extends StatelessWidget {
  const MarginedDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20), child: Divider());
  }
}

class Jumborton extends StatelessWidget {
  const Jumborton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: MediaQuery.of(context).size.width,
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(0, 4),
              )
            ],
            gradient: LinearGradient(
              begin: const Alignment(-0.75, 0),
              end: const Alignment(0.75, 0),
              colors: [
                Colors.blue.withOpacity(0.7),
                Colors.blue.withOpacity(0.9),
                Colors.blue.withOpacity(1),
              ],
            ),
          ),
        ),
        Positioned(
          right: 50,
          top: -50,
          child: Transform.rotate(
            angle: -math.pi / 8,
            child: Text(
              'it',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.07), fontSize: 250),
            ),
          ),
        ),
      ],
    );
  }
}
