import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('John Doe'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton.icon(
                onPressed: () {},
                label: Text('Rotations'),
                icon: Icon(Icons.screen_rotation),
              ),
              TextButton.icon(
                onPressed: () {},
                label: Text('Updates'),
                icon: Icon(Icons.download),
              ),
            ],
          ),
          TextButton.icon(
            onPressed: () {},
            label: Text('Dot Log Transfer'),
            icon: Icon(Icons.star),
          ),
          TextButton.icon(
            onPressed: () {},
            label: Text('Truck & Trailer '),
            icon: Icon(Icons.fire_truck),
          ),
          TextButton.icon(
            onPressed: () {},
            label: Text('Exemption'),
            icon: Icon(Icons.error_outlined),
          ),
          TextButton.icon(
            onPressed: () {},
            label: Text('Cycle Information'),
            icon: Icon(Icons.cloud_sync_outlined),
          ),
          TextButton.icon(
            onPressed: () {},
            label: Text('Carrer Information'),
            icon: Icon(Icons.person_outline),
          ),
          TextButton.icon(
            onPressed: () {},
            label: Text('App Settings'),
            icon: Icon(Icons.settings),
          ),
          TextButton.icon(
            onPressed: () {},
            label: Text('Logout'),
            icon: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
