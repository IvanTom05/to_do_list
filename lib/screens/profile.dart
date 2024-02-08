// import 'dart:collection';

// import 'package:flutter/material.dart';
// import 'package:to_do_list/constants/customAppBar.dart';
// import 'package:to_do_list/screens/navbar.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});
 
//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   get height => null;

//   get formKey => null;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//      drawer: NavBar(),
      
//         body: SingleChildScrollView(
//       child: Container(
//         padding: const EdgeInsets.only(left: 40, right: 40),
//         child: Form(
//           key: formKey, //key for form
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: height),
//               Text(
//                 "PROFILE",
//                 style: TextStyle(
//                     fontStyle: FontStyle.italic,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                     color: Color.fromARGB(255, 0, 0, 0)),
//               ),
//               SizedBox(
//                 height: height,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: "Enter your name:"),
//                 validator: (value) {
//                   if (value!.isEmpty ||
//                       !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) ;
//                   {
//                     return "only letters";
//                   }
//                 },
//               ),
//               SizedBox(
//                 height: height,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: "Enter your age:"),
//                 validator: (value) {
//                   if (value!.isEmpty || !RegExp(r'^[0-100]+$').hasMatch(value))
//                     ;
//                   {
//                     return "only numbers";
//                   }
//                 },
//               ),
//               SizedBox(
//                 height: height,
//               ),
//               TextFormField(
//                   decoration: InputDecoration(labelText: "Enter your Email:")),
//               SizedBox(
//                 height: height,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: "Enter your number:"),
//                 validator: (value) {
//                   if (value!.isEmpty ||
//                       !RegExp(r'^[+][(]{0,1}[0-9]{1,3}[)]{0,1}[-\s\./0-9]+$')
//                           .hasMatch(value)) ;
//                   {
//                     return "only numbers";
//                   }
//                 },
//               ),
//               SizedBox(
//                 height: height,
//               ),
//               TextFormField(
                
//                 decoration: InputDecoration(labelText: "Enter your country:"),
//               ),
//               TextButton(
//                   onPressed: () {
//                     if (formKey.c) ;
//                   },
//                   child: ElevatedButton(
//                     onPressed: () {},
                    
//                     child: Text(
//                       'submit',
//                       style: TextStyle(
//                         fontSize: 22,
//                         color: Color.fromARGB(255, 84, 206, 206),
//                         height: 0.9,
//                         fontWeight:FontWeight.bold,
                        
//                       ),
//                     ),
//                   )),
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }
import 'package:flutter/material.dart';
import 'package:to_do_list/constants/customAppBar.dart';
import 'package:to_do_list/screens/navbar.dart';
import 'package:to_do_list/screens/settings.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       
        
        const Text('Profile'),
        
        // Add more app bar customization if needed
     ]) ),
     
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
                  "PROFILE",
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
                    if (value!.isEmpty ||
                        !RegExp(r'^\d+$').hasMatch(value)) {
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
                  decoration:
                      InputDecoration(labelText: "Enter your number:"),
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
                  decoration:
                      InputDecoration(labelText: "Enter your country:"),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // Form is valid, proceed with submission
                      // Add your submission logic here
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Form submitted successfully')),
                      );
                    }
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 84, 206, 206),
                      height: 0.9,
                      fontWeight: FontWeight.bold,
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
