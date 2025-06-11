import 'package:flutter/material.dart';

class MyDropdown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  String? selectedCity;
  final List<String> _cities = [
    "Hanoi",
    "Ho Chi Minh",
    "Da Nang",
    "Nha Trang",
    "Can Tho"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Dropdown"),
        ),
        body: Center(
          child: DropdownButtonFormField(
            value: selectedCity,
            validator: (value){
              if (value == null) {
                return "Please select a city";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Select City",
              hintText: "Choose a city",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: Colors.deepPurpleAccent, width: 2),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
            items: _cities.map((city) {
              return DropdownMenuItem(
                value: city,
                child: Text(city),
              );
            }).toList(),
            onChanged: (value) {},
          ),
        ));
  }
}
