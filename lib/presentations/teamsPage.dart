import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TeamsPage extends StatelessWidget {
  const TeamsPage({super.key});

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
                TeamsBackSettingHeader(text: 'Mobile Development')
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
            height: 20.0,
          ),
          
          const TeamsPageLabel(text: 'Projects'),

          Padding(
            padding: const EdgeInsets.fromLTRB(9.0, 0.0, 20.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Team Project',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.star,
                    size: 25.0,
                    color: Colors.amber,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TeamsPageLabel extends StatelessWidget {
  const TeamsPageLabel({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}

class TeamsBackSettingHeader extends StatelessWidget {
  const TeamsBackSettingHeader({
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
      ],
    );
  }
}