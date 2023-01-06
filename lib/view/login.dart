//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:home_stay_application/view/register.dart';

class LoginSreen extends StatefulWidget {
  const LoginSreen({super.key});

  @override
  State<LoginSreen> createState() => _LoginSreenState();
}

class _LoginSreenState extends State<LoginSreen> {

  final TextEditingController _emailEditingController= TextEditingController();
  final TextEditingController _passEditingController= TextEditingController();
  bool _passwordVisible=false;
  final _formKey =GlobalKey<FormState>();
  bool _isChecked=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN")
        ),
      body: Center(child: SingleChildScrollView(child: Card(
        elevation: 8,
          margin: const EdgeInsets.all(8),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Form(child: Column(children: [
               TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (val)=>val!.isEmpty ||
                        !val.contains("@")||
                        val.contains(".")
                        ?"enter a valid email"
                        :null,
                        decoration: const InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(),
                            icon: Icon(Icons.email),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.0),
                            ))),
              TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _passwordVisible,
                        decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: const TextStyle(),
                            icon: const Icon(Icons.password),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(width: 1.0),
                            ),
                             suffixIcon: IconButton(
                              icon: Icon(
                             _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                            ),
                            onPressed: () {
                             setState(() {
                              _passwordVisible = !_passwordVisible;
                             });
                          },
                        ),
                            )),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: [
                                   Checkbox(
                                    value:_isChecked,
                                    onChanged: (bool? value) {
                                     setState(() {
                                      _isChecked = value!;
                                   });
                                  },
                             ),
                          Flexible(
                          child: GestureDetector(
                          onTap: null,
                          child: const Text('Remember Me',
                         style: TextStyle(
                          fontSize: 16,
                           fontWeight: FontWeight.bold,
                    )),
             ),
              ),
                MaterialButton(
                shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(5.0)),
                minWidth: 115,
                height: 50,
                elevation: 10,
             onPressed: null,
             color: Theme.of(context).colorScheme.primary,
              child: const Text('Register'),
             
          ),
],
),
            ],)),
      ),
      
      ),
      
      
      ),
      )
    );
  }
}
