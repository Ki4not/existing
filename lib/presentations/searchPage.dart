import 'package:figma/activityClass.dart';
import 'package:figma/draftCard.dart';
import 'package:figma/presentations/draftPage.dart';
import 'package:figma/presentations/recentsPage.dart';
import 'package:figma/presentations/profilePage.dart';
import 'package:figma/presentations/teamsPage.dart';
import 'package:figma/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
  List<Activity> activities = [
      Activity(project: '(Community)', title: 'Existing - Figma App'),
      Activity(project: '(Community)', title: 'Non Existing'),
      Activity(project: '(Community)', title: 'IHCI Prototype'),
    ];

    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 0.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const PageHeader(
                text: 'Search',
              ),
              InkWell(
                onTap: () {
                  Fluttertoast.showToast(
                    msg: 'Figma Account',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                  );
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Container(
                  width: 50.0,
                  height: 50.0,
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
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          
          const SearchBox(),

          const SizedBox(
            height: 15.0,
          ),

          Row(
            children: [
              TextButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: 'Your Drafts',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                  );
                  Navigator.push(
                context, MaterialPageRoute(builder: (context) => DraftsPage()));
                },
                child: const Text(
                  'Drafts',
                  style: TextStyle(color: Colors.black,
                  fontSize: 20.0),
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
                    msg: 'Your Drafts',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                  );
                  Navigator.push(
                context, MaterialPageRoute(builder: (context) => DraftsPage()));
                },
              ),
            ],
          ),

          Container(
            height: 170.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: activities
                  .map((activity) => DraftCard(
                        activity: activity,
                      ))
                  .toList(),
            ),
          ),

          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Your teams',
                  style: TextStyle(color: Colors.black,
                  fontSize: 20.0),
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: 'Your Teams',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                  );
                  Navigator.push(
                context, MaterialPageRoute(builder: (context) => TeamsPage()));
                },
                child: const Text(
                  'Mobile Development',
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
                    msg: 'Your Teams',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                  );
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => TeamsPage()));
                },
              ),
            ],
          ),

        ],
      ),
    );
  }
}