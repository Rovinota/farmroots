import 'package:flutter/material.dart';

/// Flutter code sample for [TabBar].

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _TabBarExampleState extends State<TabBarExample>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FarmRoots'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.production_quantity_limits),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: Text("FarmRoots is a cutting-edge, web-based platform designed to bridge the gap between local farmers and consumers by facilitating the buying and selling of fresh, locally sourced produce. This initiative aims to promote sustainable agriculture, support local economies, and foster a community centered around healthy living. FarmRoots not only connects users through a digital marketplace but also enriches their experience with advanced features tailored to enhance convenience and engagement."),
          ),
          Center(
            child: Text("Here Product Senction. Coming Soon...."),
          ),
          Center(
            child: Text("Profile Section. Coming Soon"),
          ),
        ],
      ),
    );
  }
}
