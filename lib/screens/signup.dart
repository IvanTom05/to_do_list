// import 'package:flutter/material.dart';
// import 'package:to_do_list/screens/Login.dart';

// class SignUp extends StatefulWidget {
//   const SignUp({super.key});

//   @override
//   State<SignUp> createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   get formKey => null;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        appBar: AppBar(  title: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
       
        
//         const Text(''),
//            SizedBox(height: 20),
//                 TextButton(
//                   onPressed: () {
//                     Colors.black;
//                     if (formKey.currentState!.validate()) {
                      
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(content: Text('Signed up')),
//                       );
//                     }
//                   },
//                   child: Text(
//                     'sign up',
//                     style: TextStyle(
//                       fontSize: 22,
//                       color: Color.fromARGB(255, 200, 207, 207),
//                       height: 0.9,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
        
       
//      ]) ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.only(left: 40, right: 40),
//           child: Form(
//             key: formKey, // Key for form
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 20),
//                 Text(
//                   "SIGN UP",
//                   style: TextStyle(
//                     fontStyle: FontStyle.italic,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: "Enter your name:"),
//                   validator: (value) {
//                     if (value!.isEmpty ||
//                         !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
//                       return "Please enter a valid name";
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 20),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: "Enter your age:"),
//                   validator: (value) {
//                     if (value!.isEmpty || !RegExp(r'^\d+$').hasMatch(value)) {
//                       return "Please enter a valid age";
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 20),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: "Enter your Email:"),
//                   validator: (value) {
//                     if (value!.isEmpty ||
//                         !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
//                             .hasMatch(value)) {
//                       return "Please enter a valid email address";
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 20),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: "Enter your number:"),
//                   validator: (value) {
//                     if (value!.isEmpty ||
//                         !RegExp(r'^[+]?[0-9]{1,3}?[(]?[0-9]{1,3}[)]?[-\s\./0-9]*$')
//                             .hasMatch(value)) {
//                       return "Please enter a valid phone number";
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 20),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: "Enter your username\:"),
//                 ),
//                 SizedBox(height: 20),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: "Enter your  password:"),
//                 ),
//                 SizedBox(height: 20),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: "Renter your  password:"),
//                 ),
//                 SizedBox(height: 20),
//                 TextButton(
//                   onPressed: () {
//                     var formKey;
//                     if (formKey.currentState!.validate()) {
//                       // Form is valid, proceed with submission
//                       // Add your submission logic here
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(content: Text('SIGNED UP')),
//                       );
//                     }
//                   },
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => LoginPage()));
//                     },
//                     child: Text(
//                       'sign up',
//                       style: TextStyle(
//                         fontSize: 22,
//                         color: Color.fromARGB(255, 84, 206, 206),
//                         height: 0.9,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:to_do_list/screens/Login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(''),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Colors.black;
                if (formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Signed up')),
                  );
                }
              },
              child: Text(
                'sign up',
                style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 200, 207, 207),
                  height: 0.9,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Form(
            key: formKey, // Key for form
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(labelText: "Enter your name:"),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                      return "Please enter a valid name";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(labelText: "Enter your age:"),
                  validator: (value) {
                    if (value!.isEmpty || !RegExp(r'^\d+$').hasMatch(value)) {
                      return "Please enter a valid age";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(labelText: "Enter your Email:"),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                            .hasMatch(value)) {
                      return "Please enter a valid email address";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(labelText: "Enter your number:"),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(
                                r'^[+]?[0-9]{1,3}?[(]?[0-9]{1,3}[)]?[-\s\./0-9]*$')
                            .hasMatch(value)) {
                      return "Please enter a valid phone number";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(labelText: "Enter your username:"),
                ),
                SizedBox(height: 20),
                TextFormField(
                  obscureText: !isPasswordVisible,
                  decoration: InputDecoration(
                    labelText: "Enter your password:",
                    suffixIcon: IconButton(
                      icon: Icon(isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty || value.length < 6) {
                      return "Please enter a valid password (at least 6 characters)";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  obscureText: !isPasswordVisible,
                  decoration: InputDecoration(labelText: "Re-enter your password:"),
                  validator: (value) {
                    var passwordController;
                    if (value!.isEmpty || value != passwordController.text) {
                      return "Passwords do not match";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Signed up')),
                      );
                    }
                  },
                  child: GestureDetector(
                    onTap: () {
                      
                    },
                    child: GestureDetector(
                      onDoubleTap: () {
                        
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text(
                        'sign up',
                        style: TextStyle(
                          fontSize: 22,
                          color: Color.fromARGB(255, 84, 206, 206),
                          height: 0.9,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

