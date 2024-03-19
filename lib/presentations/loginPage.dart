import 'package:figma/presentations/recentsPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 150.0),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 270.0,
                width: 250.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/loginpic.png'),
                  ),
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.fromLTRB(70.0, 0.0, 70.0, 0.0),
              child: Text('Mirror prototypes, browse files, and collaborate on the go',textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15.0),),
            ),
            const SizedBox(height: 150.0),

            Container(
              width: 200.0, 
              decoration: BoxDecoration(
                color: Colors.black, 
                borderRadius: BorderRadius.circular(10.0), // Set rounded corners (optional)
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RecentsPage())),
                child: const Text('Log in to Figma', style: TextStyle(color: Colors.white, fontSize: 18.0),),
              ),
            ),
            const SizedBox(height: 15.0,),

            Container(
              width: 200.0, 
              decoration: BoxDecoration(
                color: Colors.white, 
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(width: 2.0) // Set rounded corners (optional)
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white, elevation: 0.0),
                onPressed: () {
                  
                },
                child: const Text('Sign up', style: TextStyle(color: Colors.black, fontSize: 18.0),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}