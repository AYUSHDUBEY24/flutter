import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            SizedBox(height: 20),

            // Profile Image
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                "https://i.pravatar.cc/300",
              ),
            ),

            SizedBox(height: 20),

            // Name
            Text(
              "Ayush Dubey",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 5),

            // Email
            Text(
              "ayush@email.com",
              style: TextStyle(
                fontSize: 16,
                color: Colors.lightBlue,
              ),
            ),

            SizedBox(height: 30),

            // Info Cards
            ProfileTile(
              icon: Icons.phone,
              title: "Phone",
              value: "+91 9876543210",
            ),

            ProfileTile(
              icon: Icons.location_on,
              title: "Location",
              value: "India",
            ),

            ProfileTile(

              icon: Icons.school,
              title: "Role",
              value: "CS Student",
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const ProfileTile({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(value),
      ),
    );
  }
}
