import 'package:flutter/material.dart';

class MyTextFieldEven extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextFieldEven> {
  final _textController = TextEditingController();
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Text"),
      ),
      backgroundColor: Colors.blue,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                    labelText: "Nhap thong tin",
                    hintText: "Thong tin cua ban",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: IconButton(
                        onPressed: () {
                          _textController.clear();
                        },
                        icon: Icon(Icons.clear)
                    ),

                ),
                onChanged: (value){
                  setState(() {
                    _inputText = value;
                  });
                },
              ),
              SizedBox(height: 50,),
              Text("Ban da nhap $_inputText")
            ],
          ),
        ),
      ),
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
