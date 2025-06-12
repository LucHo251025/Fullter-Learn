import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class MyScrollView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormCheckBoxState();
}

class _FormCheckBoxState extends State<MyScrollView> {
  String? _gender;
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;
  String? _name;
  bool _isAgreed = false;

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
                      borderSide:
                      BorderSide(color: Colors.deepPurpleAccent, width: 2),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  onSaved: (value) {
                    _name = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your name";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 30,
                ),

                TextFormField(

                ),

                SizedBox(
                  height: 30,
                ),
                Text("Gioi tinh",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,

                ),
                FormField<String>(validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Vui long chon gioi tinh";
                  }
                }, builder: (FormFieldState<String> state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: RadioListTile(
                                  title: Text("Fimale"),
                                  value: "fimale",
                                  groupValue: _gender,
                                  onChanged: (value) {
                                    setState(() {
                                      _gender = value;
                                      state.didChange(value);
                                    });
                                  })),
                          Expanded(
                              child: RadioListTile(
                                  title: Text("Male"),
                                  value: "male",
                                  groupValue: _gender,
                                  onChanged: (value) {
                                    setState(() {
                                      _gender = value;
                                      state.didChange(value);
                                    });
                                  }))
                        ],
                      )
                    ],
                  );
                }),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Your email",
                    helperText: "Please enter a valid email address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      BorderSide(color: Colors.deepPurpleAccent, width: 2),
                    ),
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.clear),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email";
                    }
                    if (!RegExp(
                        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                        .hasMatch(value)) {
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
                      borderSide:
                      BorderSide(color: Colors.deepPurpleAccent, width: 2),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                        icon: Icon(_obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your password";
                    }
                    if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                CheckboxListTile(title: Text("Dong y voi dieu khoang"),value:  _isAgreed, onChanged: (value){
                  setState(() {
                    _isAgreed = value!;
                    print("Dong y: $_isAgreed");
                  });
                },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Hello $_name")));
                          }
                        },
                        child: Text("Submit")),
                    ElevatedButton(
                        onPressed: () {
                          _formKey.currentState!.reset();
                          setState(() {
                            _name = null;
                          });
                        },
                        child: Text("Reset"))
                  ],
                )
              ],
            )),
      ),
    );
  }
}
