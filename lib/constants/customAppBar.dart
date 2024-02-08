import 'package:flutter/material.dart';
import 'package:to_do_list/colors.dart';
import 'package:to_do_list/screens/welcome.dart';

AppBar cusAppBar(context) => AppBar(
    backgroundColor: Colors.white,
    elevation: 10,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WelcomePage(),
              ),
            );
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        const Text(
          "Plan",
          style: TextStyle(
            fontStyle: FontStyle.italic,
           
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontSize:40,
            
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(1000),
          child: Image.asset(
            "assets/images/boby2.jpg",
            height: 50,
            width: 50,
          ),
        ),
      ],
    ));
