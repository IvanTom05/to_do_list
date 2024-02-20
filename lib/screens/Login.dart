
import 'package:flutter/material.dart';
import 'package:to_do_list/screens/signup.dart';
import 'package:to_do_list/screens/welcome.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _username;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo.jpg",
            width: 100,
            height: 100,
          ),
          SizedBox(height: 20),
          
          Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _username = value!;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _password = value!;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // if (_formKey.currentState!.validate()) {
                    //   _formKey.currentState!.save();
      
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     SnackBar(content: Text('Logging in...')),
                    //   );
                    // }
                  },
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomePage()));
                      },
                      child: Padding(padding:EdgeInsetsDirectional.all(20),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      )),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Don't have an account?"),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
      
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUp()));
              
      
                    },
                    child: Text("Sign Up", style: TextStyle(
                    fontSize:14 ,
                    color: Color.fromARGB(255, 0, 183, 255),
                    height: 0.9,
                    fontWeight: FontWeight.bold,
                  ),),
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

