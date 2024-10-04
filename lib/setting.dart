import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool _darkMode = false;
  bool _notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              'General',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
          ),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Account Settings'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Action for Account Settings
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.lock),
                  title: const Text('Privacy'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Action for Privacy Settings
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.language),
                  title: const Text('Language'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Action for Language Settings
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              'Preferences',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
          ),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SwitchListTile(
                  activeColor: const Color.fromARGB(255, 0, 41, 75),
                  title: const Text('Dark Mode'),
                  secondary: const Icon(Icons.dark_mode),
                  value: _darkMode,
                  onChanged: (bool value) {
                    setState(() {
                      _darkMode = value;
                    });
                  },
                ),
                const Divider(),
                SwitchListTile(
                  activeColor: const Color.fromARGB(255, 0, 41, 75),
                  title: const Text('Enable Notifications'),
                  secondary: const Icon(Icons.notifications),
                  value: _notificationsEnabled,
                  onChanged: (bool value) {
                    setState(() {
                      _notificationsEnabled = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
