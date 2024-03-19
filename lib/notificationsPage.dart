import 'package:figma/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(5.0, 50.0, 0.0, 0.0),
            child: Row(
              children: [
                BackSettingHeader(text: 'Notifications')
              ],
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Divider(
            height: 2.0,
          ),
          
          Padding(
            padding: const EdgeInsets.fromLTRB(9.0, 10.0, 20.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Push Notifications',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.toggleOn,
                    size: 25.0,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 30.0,
          ),
          const SettingItem(text: 'File Comments'),
          const SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(9.0, 0.0, 20.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'All comments, mentions, and replies',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.check,
                    size: 18.0,
                    color: Colors.grey[500],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const SettingItem(text: 'Only mentions and replies'),
          const SizedBox(
            height: 5.0,
          ),
          const SettingItem(text: 'None   '),
        ],
      ),
    );
  }
}

class BackSettingHeader extends StatelessWidget {
  const BackSettingHeader({
    super.key,
    required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(FontAwesomeIcons.arrowLeft),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Profile()));
          },
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
