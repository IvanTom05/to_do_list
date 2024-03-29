// import 'package:flutter/material.dart';
// import 'package:to_do_list/constants/customAppBar.dart';
// import 'package:to_do_list/screens/navbar.dart';
// import 'package:to_do_list/screens/settings.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title:
//               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//         const Text('Profile'),
//         SizedBox(height: 20),
//         TextButton(
//           onPressed: () {
//             Colors.black;
//             if (formKey.currentState!.validate()) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text('SAVED!!')),
//               );
//             }
//           },
//           child: Text(
//             'edit',
//             style: TextStyle(
//               fontSize: 22,
//               color: Color.fromARGB(255, 200, 207, 207),
//               height: 0.9,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ])),
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
//                   "PROFILE",
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
//                   decoration: InputDecoration(labelText: "Enter your country:"),
//                 ),
//                 SizedBox(height: 20),
//                 TextButton(
//                   onPressed: () {
//                     if (formKey.currentState!.validate()) {
//                       // Form is valid, proceed with submission
//                       // Add your submission logic here
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(content: Text('SAVED!!')),
//                       );
//                     }
//                   },
//                   child: Text(
//                     'save',
//                     style: TextStyle(
//                       fontSize: 22,
//                       color: Color.fromARGB(255, 84, 206, 206),
//                       height: 0.9,
//                       fontWeight: FontWeight.bold,
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
  bool isEditing = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Profile',style: TextStyle(
            fontStyle: FontStyle.italic,
           
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontSize:40,)),
            if (!isEditing)
              TextButton(
                onPressed: () {
                  setState(() {
                    isEditing = true;
                  });
                },
                child: Text(
                  'Edit',
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
                // SizedBox(height: 20),
                // Text(
                //   // "PROFILE",
                //   // style: TextStyle(
                //   //   fontStyle: FontStyle.italic,
                //   //   fontWeight: FontWeight.bold,
                //   //   fontSize: 20,
                //   //   color: Color.fromARGB(255, 0, 0, 0),
                //   ),
                // ),
                SizedBox(height: 20),
                TextFormField(
                  enabled: isEditing,
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
                  enabled: isEditing,
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
                  enabled: isEditing,
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
                  enabled: isEditing,
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
                  enabled: isEditing,
                  decoration:
                      InputDecoration(labelText: "Enter your country:"),
                ),
                SizedBox(height: 20),
                if (isEditing)
                  TextButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        // Form is valid, proceed with submission
                        // Add your submission logic here
                        setState(() {
                          isEditing = false;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Saved!!')),
                        );
                      }
                    },
                    child: Text(
                      'Save',
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
