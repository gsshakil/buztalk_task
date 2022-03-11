import 'package:buztalk_task/provider/landing_provider.dart';
import 'package:buztalk_task/screens/home_screen.dart';
import 'package:buztalk_task/screens/messages_screen.dart';
import 'package:buztalk_task/screens/notification_screen.dart';
import 'package:buztalk_task/screens/opportunities_screen.dart';
import 'package:buztalk_task/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingScren extends ConsumerWidget {
  LandingScren({Key? key}) : super(key: key);

  final screens = [
    const HomeScreen(),
    const OpportunitiesScreen(),
    const MessagesScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final landingNotifier = ref.watch(landingProvider);

    return WillPopScope(
      onWillPop: () async {
        return landingNotifier.implementDoubleTapExit();
      },
      child: Scaffold(
        body: IndexedStack(
          index: landingNotifier.selectedIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 12,
          currentIndex: landingNotifier.selectedIndex,
          onTap: landingNotifier.setSelectedIndex,
          items: const [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.tasks),
              label: 'Opportunities',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.comment),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.bell),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.user),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
