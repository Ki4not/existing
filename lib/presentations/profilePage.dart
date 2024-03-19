import 'package:figma/presentations/notificationsPage.dart';
import 'package:figma/presentations/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(5.0, 50.0, 0.0, 0.0),
            child: CloseSettingHeader(text: 'Account',),
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Divider(
            height: 2.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 0.0),
            child: Row(
              children: [
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber,
                  ),
                  child: const Center(
                      child: Text(
                    'C',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  )),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'CATUBIG, KIAN JUNE B.',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'kianjune.catubig@ctu.edu.ph',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const SettingLabel(text: 'Teams and Organizations'),
          const SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
            child: Row(
              children: [
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber,
                  ),
                  child: const Center(
                      child: Text(
                    'C',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  )),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                const Text(
                  'CATUBIG, KIAN JUNE B.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 80.0,
                ),
                const Icon(FontAwesomeIcons.check),
              ],
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const SettingLabel(
            text: 'General',
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(9.0, 0.0, 13.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Notifications',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.greaterThan,
                    size: 15.0,
                    color: Colors.grey[500],
                  ),
                  onPressed: () {
                    Fluttertoast.showToast(
                    msg: 'Notification Settings',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                  );
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Notifications()));
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const SettingItem(
            text: 'Report Issue',
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(9.0, 0.0, 20.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Toggle shake to report',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.toggleOff,
                    size: 25.0,
                    color: Colors.grey[500],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () => _dialogueBuilder(context),
                  child: const Text(
                    'Log out',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Center(
            child: Text(
              'Version 24.1.1',
              style: TextStyle(fontSize: 13.0, color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}

class CloseSettingHeader extends StatelessWidget {
  const CloseSettingHeader({
    super.key,
    required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(FontAwesomeIcons.xmark),
          onPressed: () => Navigator.pop(context)
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class SettingItem extends StatelessWidget {
  const SettingItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              text,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

class SettingLabel extends StatelessWidget {
  const SettingLabel({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

Future<void> _dialogueBuilder(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: const Text('Are you sure you want to log out?', style: TextStyle(fontSize: 18.0),),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 25,
          actions: [
            
            // Cancel Button
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel', style: TextStyle(color: Colors.grey, fontSize: 15.0),),
              style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge),
            ),

            // Log out Button
            TextButton(
              onPressed: () {
                // Toast to tell user that it is being redirected to back view
                Fluttertoast.showToast(
                  msg: 'Login Page',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text('Log out', style: TextStyle(color: Colors.red, fontSize: 15.0),),
              style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge),
            ),
          ],

        );
      });
}
