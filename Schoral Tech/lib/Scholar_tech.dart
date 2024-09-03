// ignore: file_names
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF314F6A),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 112,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 110,
                backgroundImage:
                    AssetImage('images/Screenshot 2024-09-03 130040.png'),
              ),
            ),
            Text(
              'Ahmed Saeed Darwish',
              style: TextStyle(
                  color: Colors.white, fontSize: 24, fontFamily: 'Pacifico'),
            ),
            Text(
              'FLUTTRE DEVELOPER',
              style: TextStyle(
                color: Color(0xFF6C8090),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              color: Color(0xFF6C8090),
              thickness: 1,
              indent: 40,
              endIndent: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 65,
                // color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Icon(
                        Icons.phone,
                        size: 32,
                        color: Color(0xFF314F6A),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Text(
                        '(+20) 1040073077',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 65,
                // color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                      child: Icon(
                        Icons.mail,
                        size: 32,
                        color: Color(0xFF314F6A),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        'ahmeddarwish@gmail.com',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
