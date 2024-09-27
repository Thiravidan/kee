import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        '/admin': (context) => AdminPage(),
        '/user': (context) => UserPage(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50], // Light blue background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Image (Increased size)
            Image.asset(
              'assets/logo.png',
              height: 150,  // Increased height
              width: 150,   // Increased width
            ),
            SizedBox(height: 20),
            // Karthik Enterprises Text
            Text(
              'Karthik Enterprises',
              style: TextStyle(
                fontSize: 36, // Adjust the size based on your preference
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Quality • Consistency • Trust',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(height: 40),
            // Admin and User buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Admin Button
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/admin'); // Navigate to Admin Page
                  },
                  child: Column(
                    children: [
                      Text(
                        'Admin (நிர்வாகி)',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            'Admin',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // User Button
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/user'); // Navigate to User Page
                  },
                  child: Column(
                    children: [
                      Text(
                        'User (பயனர்)',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            'User',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Simple Admin Page

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              // Logo and company name
              Row(
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'KE',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                '• Quality • Consistency • Trust',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blueGrey,
                ),
              ),
              Spacer(),
              // User ID field
              Text(
                'User ID (பயனர் ஐடி)',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Password field
              Text(
                'Password (கடவுச்சொல்)',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              SizedBox(height: 5),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 30),
              // Login button
              ElevatedButton(
                child: Icon(Icons.arrow_forward, color: Colors.white),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  // Add login logic here
                },
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

// Simple User Page
class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Page'),
      ),
      body: Center(
        child: Text(
          'Welcome to User Page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
