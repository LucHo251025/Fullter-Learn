import "package:flutter/material.dart";

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});
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
              SizedBox(height: 50,),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                  hintText: "Your name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 50,),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Your email",
                  helperText: "Please enter a valid email address",
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.clear),
                ),
              )
          ]
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