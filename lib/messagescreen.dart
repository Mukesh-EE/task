import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  final List<Map<String, String>> messages = [
    {
      'name': 'Abdul Shaikh',
      'message': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
      'time': '11:30 PM',
      'image': 'https://randomuser.me/api/portraits/men/1.jpg',
    },
    {
      'name': 'Abdul Shaikh',
      'message': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
      'time': '11:30 PM',
      'image': 'https://randomuser.me/api/portraits/men/1.jpg',
    },
    {
      'name': 'Abdul Shaikh',
      'message': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
      'time': '11:30 PM',
      'image': 'https://randomuser.me/api/portraits/men/1.jpg',
    },
    {
      'name': 'Abdul Shaikh',
      'message': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
      'time': '11:30 PM',
      'image': 'https://randomuser.me/api/portraits/men/1.jpg',
    },
    {
      'name': 'Abdul Shaikh',
      'message': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
      'time': '11:30 PM',
      'image': 'https://randomuser.me/api/portraits/men/1.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages', style: TextStyle(fontSize: 22)),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        CachedNetworkImageProvider(message['image']!),
                  ),
                  title: Text(
                    message['name']!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    message['message']!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(message['time']!,
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '1',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: Icon(Icons.add),
      ),
    );
  }
}
