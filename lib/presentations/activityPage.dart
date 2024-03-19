import 'package:figma/presentations/recentsPage.dart';
import 'package:figma/presentations/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({
    super.key,
  });

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
                text: 'Activity',
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

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Unread (1)', style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w800
              ),),
              Text('Mark all as read', style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w800
              ),)
            ],
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
          
          CommentCard()
        ],
      ),
    );
  }
}

class CommentCard extends StatelessWidget {
  const CommentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0.0,
      child: Row(
        children: [
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
                color: Colors.pink,
              ),
              child: const Center(
                  child: Text(
                'C',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              )),
            ),
          ),

          const SizedBox(
            width: 15.0,
          ),

          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('JOHNBERT DECINAN ', style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('left a', style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500
                  ),),
                ],
              ),
              Row(
                children: [
                  Text('comment in ', style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500
                  ),),
                  Text('CuraeEssentials', style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),

              SizedBox(
                height: 10.0,
              ),

              Text('STAFF ONLY', style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w700
              ),),

              SizedBox(
                height: 10.0,
              ),

              Text('3 months ago', style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w700
              ),)
            ],
          ),

          const SizedBox(width: 30.0,),

          IconButton(
          icon: const Icon(FontAwesomeIcons.greaterThan, size: 15.0, color: Colors.grey,),
          onPressed: () {}
        ),
        ],
      ),
    );
  }
}