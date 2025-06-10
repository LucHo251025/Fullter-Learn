import "package:flutter/material.dart";

class MyGestures extends StatelessWidget {
  const MyGestures({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Text"),
      ),
      backgroundColor: Colors.blue  ,
      body: Center(
          child:Column(
            children: [
              SizedBox(
                height: 50,
              ),
              // GestureDetector bat su kien click
              GestureDetector(
                onTap: (){print("Hell");},
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.deepPurpleAccent,
                  alignment: Alignment.center,
                  child: Text("Click Me",textAlign: TextAlign.center, style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
              )
            ],
          )
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