import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  //Su dung GlobalKey de quan ly form
  final _formKey = GlobalKey<FormState>();
  String? _name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Your name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 2),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  onSaved: (value){
                    _name = value;
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: () {
                      if(_formKey.currentState!.validate()){
                        _formKey.currentState!.save();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Hello $_name"))
                        );
                      }
                    }, child: Text("Submit")),
                    ElevatedButton(onPressed: () {}, child: Text("Reset"))
                  ],

                )
              ],
            )
        ),
      ),
    );
  }
}
