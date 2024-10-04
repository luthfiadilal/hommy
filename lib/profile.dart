import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              // Profile Image
              const Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
              ),
              const SizedBox(height: 20),
              // Username
              const Text(
                'Luthfi Adilal Mahbub',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                '@luthfi',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 30),
              // Email Information
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: const Icon(Icons.email),
                  title: const Text('Email'),
                  subtitle: const Text('luthfi@gmail.com'),
                  trailing: const Icon(Icons.edit),
                  onTap: () {
                    // Handle email edit
                  },
                ),
              ),
              const SizedBox(height: 10),
              // Phone Number
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: const Icon(Icons.phone),
                  title: const Text('Phone'),
                  subtitle: const Text('08755267382'),
                  trailing: const Icon(Icons.edit),
                  onTap: () {
                    // Handle phone edit
                  },
                ),
              ),
              const SizedBox(height: 10),
              // Address
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: const Icon(Icons.location_on),
                  title: const Text('Address'),
                  subtitle: const Text('Tasikmala'),
                  trailing: const Icon(Icons.edit),
                  onTap: () {
                    // Handle address edit
                  },
                ),
              ),
              const SizedBox(height: 30),
              // Edit Profile Button
              ElevatedButton.icon(
                onPressed: () {
                  // Handle profile edit
                },
                icon: const Icon(Icons.edit, color: Colors.white),
                label: const Text(
                  'Edit Profile',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 41, 75),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Logout Button
              TextButton.icon(
                onPressed: () {
                  // Handle logout
                },
                icon: const Icon(Icons.logout, color: Colors.red),
                label: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
