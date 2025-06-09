import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Text"),
      ),
      backgroundColor: Colors.blue,
      body: Center(
          child: Column(
        children: [
          //Tao khoang cach
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                print("Hello");
              },
              child: Text(
                "Click Me",
                style: TextStyle(fontSize: 20),
              ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              elevation: 10
            ),

          ),
          const SizedBox(
            height: 50,
          ),
          TextButton(
              onPressed: () {
                print("TextButton");
              },
              child: Text(
                "TextButton",
                style: TextStyle(fontSize: 20),
              )),
          SizedBox(height:50,),
          OutlinedButton(onPressed: (){}, child: Text("OutLineButton",style: TextStyle(fontSize: 20),)),
          SizedBox(height: 50,),
          IconButton(onPressed: (){}, icon: Icon(Icons.add, size: 50, color: Colors.white,)),
          SizedBox(height: 50,),
          FloatingActionButton(onPressed:(){}, child: Icon(Icons.add, size: 50, color: Colors.white,)),
        ],
      )),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("All");
      }),
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
