import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          backgroundColor: const Color.fromARGB(255, 7, 94, 84),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('CHATS')),
              Tab(child: Text('STATUS')),
              Tab(child: Text('CALLS')),
            ],
          ),

          actions: [
            IconTheme(
              data: IconThemeData(color: Colors.white),
              child: Row(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                  PopupMenuButton(
                    itemBuilder: (context) => [
                      PopupMenuItem(child: Text('New group')),
                      PopupMenuItem(child: Text('New broadcast')),
                      PopupMenuItem(child: Text('Linked devices')),
                      PopupMenuItem(child: Text('Starred messages')),
                      PopupMenuItem(child: Text('Settings')),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Center(
              child: Icon(Icons.camera_alt, size: 100, color: Colors.grey),
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text('Contact ${index + 1}'),
                  subtitle: Text('Last message from Contact ${index + 1}'),
                  trailing: Text('12:${index.toString().padLeft(2, '0')} PM'),
                );
              },
            ),

            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green, width: 3),
                    ),

                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                  ),
                  title: Text('Contact ${index + 1}'),
                  subtitle: Text('Last call with Contact ${index + 1}'),
                );
              },
            ),

            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text('Contact ${index + 1}'),
                  subtitle: Text('Last call with Contact ${index + 1}'),
                  trailing: Icon(Icons.call, color: Colors.green),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
