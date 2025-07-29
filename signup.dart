import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF77BAA2), // Updated background color
        // Background color
        appBar: AppBar(
          backgroundColor: Color(0xFF77BAA2), // Updated background color
          // New background color
          elevation: 0,
          leading: Icon(Icons.arrow_back, color: Colors.black), // Back arrow icon
        ),
        body: Center(  // Wrap everything in a Center widget to center the Column
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Title - Create New Account
                Text(
                  'Create New Account',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF388E3C), // Green color for the title
                  ),
                ),
                SizedBox(height: 40), // Space between title and text fields

                // Name TextField
                Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      filled: true,
                      fillColor: Color(0xFF80CBC4), // Greenish background color
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFF80CBC4), width: 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Space between Name and Email fields

                // Email TextField
                Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      filled: true,
                      fillColor: Color(0xFF80CBC4), // Greenish background color
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFF80CBC4), width: 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Space between Email and Password fields

                // Password TextField
                Container(
                  width: 300,
                  child: TextField(
                    obscureText: true, // Hide password text
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Color(0xFF80CBC4), // Greenish background color
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFF80CBC4), width: 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30), // Space between Password field and Sign Up button

                // Sign Up Button
                ElevatedButton(
                  onPressed: () {
                    // Handle Sign Up functionality
                  },
                  style: ElevatedButton.styleFrom( backgroundColor: Color(0xFF3C7962),
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // Rounded corners for the button
                    ),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                SizedBox(height: 40), // Space between the button and the illustration

                // Illustration or Image (User Avatar)
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/illustration.png'), // Add your own illustration image
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(50), // Circle avatar
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

