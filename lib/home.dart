import 'package:flutter/material.dart';
import 'package:whatsapp_clon_project/screens/call_screen.dart';
import 'package:whatsapp_clon_project/screens/chat_screen.dart';
import 'package:whatsapp_clon_project/screens/status_screen.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Color(0xff075E54),
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "Sohbetler"),
            Tab(text: "Durum"),
            Tab(text: "Aramalar"),
          ],
        ),
        actions: [Icon(Icons.search), Icon(Icons.more_vert)],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [Text("kamera"), ChatScreen(), StatusScreen(), CallScreen()],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: Icon(Icons.message, color: Colors.white),
        onPressed: () => print("sohbet"),
      ),
    );
  }
}
