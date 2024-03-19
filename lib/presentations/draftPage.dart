import 'package:figma/activityCard.dart';
import 'package:figma/activityClass.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DraftsPage extends StatelessWidget {
  const DraftsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Activity> activities = [
      Activity(project: 'Edited 5 minutes ago', title: 'Existing - Figma App'),
      Activity(project: 'Edited 30 minutes ago', title: 'Non Existing'),
      Activity(project: 'Edited 3 months ago', title: 'IHCI Prototype'),
      Activity(project: 'Edited 3 months ago', title: 'Curae Essentials')
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(5.0, 50.0, 0.0, 0.0),
            child: Row(
              children: [
                DraftBackSettingHeader(text: 'Drafts')
              ],
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Divider(
            height: 2.0,
          ),
          const SizedBox(
            height: 12.0,
          ),
          
          Column(
            children: activities
                .map((activity) => ActivityCard(
                      activity: activity,
                    ))
                .toList(),
          )
          
        ],
      ),
    );
  }
}

class DraftBackSettingHeader extends StatelessWidget {
  const DraftBackSettingHeader({
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
          onPressed: () => Navigator.pop(context)
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
        ),
        const SizedBox(width: 175.0,),
        IconButton(
          icon: const Icon(Icons.share),
          onPressed: () {}
        ),
      ],
    );
  }
}
