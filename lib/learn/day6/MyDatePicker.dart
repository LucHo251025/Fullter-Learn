import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDatePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  final _dateController = TextEditingController();
  DateTime? _dateofBirth;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Date Picker"),
      ),
      body: Center(
        child:
        TextFormField(
          validator:
          (value) {
            if (value == null || value.isEmpty) {
              return "Please select your date of birth";
            }
            return null;
          },
          controller: _dateController,
          decoration: InputDecoration(
            labelText: "Date of Birth",
            hintText: "Select your date of birth",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 2),
            ),
            filled: true,
            fillColor: Colors.white,
            suffixIcon: Icon(Icons.calendar_today)
          ),
          readOnly: true, //chi doc du lieu
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
                context: context,
                firstDate: DateTime(1900),
                lastDate: DateTime(2025));
            if(pickedDate!=null) {
              String formattedDate = DateFormat("dd/MM/yyyy").format(pickedDate);
              setState(() {
                _dateController.text = formattedDate;
                _dateofBirth = pickedDate;
              });
            }
          },
        )
        ,
      ),
    );
  }
}