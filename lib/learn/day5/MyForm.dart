import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  //Su dung GlobalKey de quan ly form
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;
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
                  controller: _fullNameController,
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
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Please enter your name";
                    }
                    return null;
                  },

                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Your email",
                    helperText: "Please enter a valid email address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 2),
                    ),
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.clear),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Please enter your email";
                    }
                    if(!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value)){
                      return "Please enter a valid email address";
                    }

                    return null;

                  },
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Your password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 2),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    }, icon: Icon(_obscurePassword ? Icons.visibility : Icons.visibility_off)),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Please enter your password";
                    }
                    if(value.length < 6){
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 30,
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
                    ElevatedButton(onPressed: () {
                      _formKey.currentState!.reset();
                      setState(() {
                        _name = null;
                      });
                    }, child: Text("Reset"))
                  ],

                )
              ],
            )
        ),
      ),
    );
  }
}
