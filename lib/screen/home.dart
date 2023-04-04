import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('WhatsApp'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          PopupMenuButton(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(value: 1, child: Text('New Group')),
                PopupMenuItem(value: 2, child: Text('New Broadcast')),
                PopupMenuItem(value: 3, child: Text('Linked Devices')),
                PopupMenuItem(value: 4, child: Text('Starred Messages')),
                PopupMenuItem(value: 5, child: Text('Payments')),
                PopupMenuItem(value: 6, child: Text('Settings')),
              ];
            },
          )
        ],
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'Chats',
            ),
            Tab(
              text: 'Status',
            ),
            Tab(
              text: 'Calls',
            ),
          ],
          controller: _controller,
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text('Camera'),
          Text('Chats'),
          Text('Status'),
          Text('Calls'),
        ],
      ),
    );
  }
}
