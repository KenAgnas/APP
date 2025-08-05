import 'package:flutter/material.dart';

void main() => runApp(PersonalApp());

class PersonalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0F2F1), // light green background
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 16),
            // Title
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "PERSONAL APP!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF00695C),
                  ),
                ),
              ),
            ),

            SizedBox(height: 16),
            // Top illustration
            Image.asset(
              'assets/images/friends.png', // Replace with your image path
              width: 250,
            ),
            SizedBox(height: 30),
            // Sign Up Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF004D40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            // Already have an account? Login
            RichText(
              text: TextSpan(
                text: "Already have an account? ",
                style: TextStyle(color: Colors.black87),
                children: <TextSpan>[
                  TextSpan(
                    text: "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF004D40),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            // Bottom illustration
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Image.asset(
                'images/Communication.PNG', // Replace with your image path
                width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
