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
                keyboardType: TextInputType.emailAddress,
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
              ),
              SizedBox(height: 50,),
              TextField(
                decoration: InputDecoration(
                  labelText: "Phone",
                  hintText: "Your Phone",
                  helperText: "Please enter a valid email ",
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.clear),
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 50,),
              TextField(
                decoration: InputDecoration(
                  labelText: "Date of Birth",
                  hintText: "Your Date of Birth",
                  helperText: "Please enter a Date of Birth ",
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.clear),
                ),
                keyboardType: TextInputType.datetime,
              ),

              SizedBox(height: 50,),
              TextField(
                obscureText: true,
                onChanged: (value) {
                  print(value);
                },
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Your Date of Birth",
                  helperText: "Please enter a Date of Birth ",
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.clear),
                ),
                keyboardType: TextInputType.datetime,
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