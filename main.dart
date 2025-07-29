import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center( // Centers everything vertically and horizontally
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Padding around the content
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Vertically center the items
              crossAxisAlignment: CrossAxisAlignment.center, // Horizontally center the items
              children: [
                // Profile Icon
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Color(0xFF3C7962),
                  child: Icon(
                    Icons.person,
                    size: 90,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 40), // Space between the icon and the text

                // Login Text
                Text(
                  'Login',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xFF3C7962),
                  ),
                ),
                SizedBox(height: 40), // Space between "Login" and the input fields

                // Name TextField (Shortened width)
                Container(
                  width: 300, // Shortened width
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      filled: true,
                      fillColor: Color(0xFF77BBA2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFF3C7962), width: 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Space between input fields

                // Password TextField (Shortened width)
                Container(
                  width: 300, // Shortened width
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Color(0xFF77BBA2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFF3C7962), width: 1),
                      ),
                    ),
                    obscureText: true, // Hide password input
                  ),
                ),
                SizedBox(height: 30), // Space between password field and the login button

                // Login Button
                ElevatedButton(
                  onPressed: () {
                    // Handle login functionality here
                  },
                  style: ElevatedButton.styleFrom( backgroundColor: Color(0xFF3C7962),
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  ),
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFFFFFFF)),
                  ),
                ),
                SizedBox(height: 20), // Space between login button and "Forgot Password"

                // Forgot Password Text
                TextButton(
                  onPressed: () {
                    // Handle forgot password functionality
                  },
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: Color(0xFF3C7962)),
                  ),
                ),
                SizedBox(height: 20), // Space between forgot password and sign up

                // Sign Up Text
                TextButton(
                  onPressed: () {
                    // Handle sign up functionality
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Color(0xFF3C7962)),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Color(0xFF77BBA2),
      ),
    ),
  );
}
