import "package:flutter/material.dart";

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Scaffold 1"),
        backgroundColor: Colors.cyan,
        actions: [
          IconButton(onPressed: (){
            print("Action1");
          }, icon: Icon(Icons.search)),
        ],
      ),
      backgroundColor: Colors.blue  ,
      body: Center(
        child: Text(
          'Hello, Fluter!',
        ),
      ),
      floatingActionButton:FloatingActionButton(onPressed: (){print("All");}) ,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ]),
    );
  }
}