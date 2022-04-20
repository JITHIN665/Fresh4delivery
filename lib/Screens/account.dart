import 'package:flutter/material.dart';
import 'package:fresh4delivery/Screens/login.dart';
import 'package:fresh4delivery/Screens/manageaddress.dart';
import 'package:fresh4delivery/Screens/reset_pass.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Your Informations'),
                  ],
                ),
                ListTile(
                  leading: Icon(Icons.book_sharp),
                  iconColor: Colors.grey,
                  title: Text('order history'),
                  onTap: () {
                    print('clicked');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.location_on_sharp),
                  iconColor: Colors.grey,
                  title: Text('Address Book'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ManageAdress()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.edit_note),
                  iconColor: Colors.grey,
                  title: Text('edit profile'),
                  onTap: () {
                    print('clicked');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.notification_important),
                  iconColor: Colors.grey,
                  title: Text('notifications'),
                  onTap: () {
                    print('clicked');
                  },
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Others'),
                  ],
                ),
                ListTile(
                  leading: Icon(Icons.support_agent),
                  iconColor: Colors.grey,
                  title: Text('support'),
                  onTap: () {
                    print('clicked');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.share_outlined),
                  iconColor: Colors.grey,
                  title: Text('Share the app'),
                  onTap: () {
                    print('clicked');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.error),
                  iconColor: Colors.grey,
                  title: Text('about us'),
                  onTap: () {
                    print('clicked');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.edit_note_rounded),
                  iconColor: Colors.grey,
                  title: Text('change password'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Reset()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.power_settings_new),
                  iconColor: Colors.grey,
                  title: Text('logout'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScreenLogin()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ));
}
