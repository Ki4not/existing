import 'package:figma/presentations/recentsPage.dart';
import 'package:figma/presentations/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MirrorPage extends StatelessWidget {
  const MirrorPage({
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
                text: 'Mirror',
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
            height: 150.0,
          ),

          Center(
            child: Container(
              height: 270.0,
              width: 250.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/mirrorcontent.jpg'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
