import 'package:flutter/material.dart';

class TabBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,  // Number of tabs
      child: Scaffold(
       
        appBar: AppBar(
         backgroundColor: Colors.white,
          bottom: const TabBar(
            labelColor: Colors.orange,      // Selected tab text color
            unselectedLabelColor: Colors.black, // Unselected tab text color
            indicatorColor: Colors.orange,  // Color of the sliding indicator
            indicatorWeight: 2.5,           // Thickness of the indicator
            tabs: const [
              Tab(text: 'Project'),
              Tab(text: 'Saved'),
              Tab(text: 'Shared'),
              Tab(text: 'Achievement'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Project Content')),
            Center(child: Text('Saved Content')),
            Center(child: Text('Shared Content')),
            Center(child: Text('Achievement Content')),
          ],
        ),
      ),
    );
  }
}


