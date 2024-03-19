import 'package:figma/activityCard.dart';
import 'package:figma/activityClass.dart';
import 'package:figma/businessLogic/recentsPageBloc/recents_page_bloc.dart';
import 'package:figma/presentations/activityPage.dart';
import 'package:figma/presentations/mirrorPage.dart';
import 'package:figma/presentations/searchPage.dart';
import 'package:figma/presentations/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<BottomNavigationBarItem> navItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.clock),
    label: 'Recents',
  ),
  BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.magnifyingGlass),
    label: 'Search',
  ),
  BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.bell),
    label: 'Activity',
  ),
  BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.desktop),
    label: 'Mirror',
  ),
];

List<Activity> activities = [
    Activity(project: 'Team Project', title: 'IHCI Prototype'),
    Activity(project: 'Team Project', title: 'Curae Essentials')
  ];

List<Widget> navScreens = <Widget>[
  Recents(activities: activities),
  const SearchPage(),
  const ActivityPage(),
  const MirrorPage(),
];

class RecentsPage extends StatelessWidget {
  const RecentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecentsPageBloc, RecentsPageState>(
      listener: (context, state) {},
      builder: (context, state) {
        final clampedIndex = state.tabIndex.clamp(0, navScreens.length - 1);
        return Scaffold(
            body: Center(child: navScreens[clampedIndex]),
            bottomNavigationBar: BottomNavigationBar(
              items: navItems,
              currentIndex: state.tabIndex,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                BlocProvider.of<RecentsPageBloc>(context)
                    .add(TabChange(tabIndex: index));
              },
            ));
      },
    );
  }
}

class Recents extends StatelessWidget {
  const Recents({
    super.key,
    required this.activities,
  });

  final List<Activity> activities;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 0.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const PageHeader(
                text: 'Recents',
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
            height: 10.0,
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

class PageHeader extends StatelessWidget {
  const PageHeader({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.w400),
    );
  }
}
