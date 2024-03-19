import 'package:figma/activityClass.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DraftCard extends StatelessWidget {
  const DraftCard({super.key, required this.activity});

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 150.0,
              height: 100.0,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0)),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(
                        FontAwesomeIcons.pen,
                        color: Colors.white,
                        size: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  activity.title,
                  style: const TextStyle(
                      fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Text(activity.project,
                    style: TextStyle(fontSize: 13.0, color: Colors.grey[700]))
              ],
            ),
          )
        ],
      ),
    );
  }
}
