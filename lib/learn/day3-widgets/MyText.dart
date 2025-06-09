import "package:flutter/material.dart";

class MyText extends StatelessWidget {
  const MyText({super.key});
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
           //Tao khoang cach
           const SizedBox(height: 50,),
           const Text("Ho Thanh Luc",style: TextStyle(color: Colors.white),),
           const SizedBox(height: 20,),
           const Text(
             "Hello, Fluter!",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
           ),
            const SizedBox(height: 20,),
           const Text(
             "Bạn đang import một file Dart tên 'MyScaffold.dart', nhưng file đó không tồn tại Đúng đường dẫn: nếu file nằm trong thư mục lib/learn/day3-widgets, thì phải import thế này hoặc đường dẫn sai.",
             style: TextStyle(
                fontSize: 20,
               color: Colors.white,
               letterSpacing: 1.5
             ),
             textAlign: TextAlign.center,
             maxLines: 3,
             overflow: TextOverflow.ellipsis,
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