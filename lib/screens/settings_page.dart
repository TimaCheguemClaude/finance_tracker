import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
        ),
        body: ListView(children: [
          ListTile(
            title: Text('Currency'),
            subtitle: Text('USD'),
            onTap: () {
              // Implement currency selection
            },
          ),
          ListTile(
            title: Text('Theme'),
            subtitle: Text('Light'),
            onTap: () {
              // Implement theme selection
            },
          ),
          ListTile(
            title: Text('Export Data'),
            onTap: () {
              // Implement data export
            },
          ),
          ListTile(
              title: Text('About'),
              onTap: () {
                // Show app information
              }),
        ]));
  }
}
