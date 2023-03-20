import 'package:flutter/material.dart';
import 'package:flutter_food/screens/login.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Account extends StatefulWidget {
  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent.withAlpha(40),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              const SizedBox(height: 60),
              const ProfilePic(),
              const SizedBox(height: 20),
              ProfileMenu(
                text: "My Account",
                icon: Icons.account_box_rounded,
                press: () => {},
              ),
              ProfileMenu(
                text: "Notifications",
                icon: Icons.notifications_active_sharp,
                press: () {},
              ),
              ProfileMenu(
                text: "Settings",
                icon: Icons.settings,
                press: () {},
              ),
              ProfileMenu(
                text: "My Orders",
                icon: Icons.shopping_bag,
                press: () {},
              ),
              ProfileMenu(
                text: "Help Center",
                icon: Icons.help_center,
                press: () {},
              ),
              ProfileMenu(
                text: "Log Out",
                icon: Icons.exit_to_app,
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: RouteSettings(name: "/Account"),
                          builder: (context) => LoginPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
