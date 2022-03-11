import 'package:buztalk_task/widgets/custom_list_tile.dart';
import 'package:buztalk_task/widgets/jumborton.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Jumborton(),
          CustomListTile(
            title: 'Clocking',
            subtitle: 'Keep track of your working hours',
            icon: FaIcon(
              FontAwesomeIcons.solidClock,
              color: Colors.redAccent,
            ),
          ),
          CustomListTile(
            title: 'Shifts',
            subtitle: 'Accept and rejects your shifts',
            icon: FaIcon(
              FontAwesomeIcons.idCard,
              color: Colors.grey,
            ),
          ),
          CustomListTile(
            title: 'Contract Details',
            subtitle: 'Review and download your contracts',
            icon: FaIcon(
              FontAwesomeIcons.sdCard,
              color: Colors.blueGrey,
            ),
          ),
          CustomListTile(
            title: 'Payslips',
            subtitle: 'Access all your past payslips',
            icon: FaIcon(
              FontAwesomeIcons.moneyBill,
              color: Colors.greenAccent,
            ),
          ),
          CustomListTile(
            title: 'Other documents',
            subtitle: 'Find your past job documents',
            icon: FaIcon(
              FontAwesomeIcons.file,
              color: Colors.purple,
            ),
          ),
          CustomListTile(
            title: 'Report an issue',
            subtitle: 'Let us know if you encounter any issue',
            icon: FaIcon(
              FontAwesomeIcons.bug,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
