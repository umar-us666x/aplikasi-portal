import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: Image.asset('assets/logo/foto.jpg'),
            accountName: Text("Umar Sabar"),
            accountEmail: Text(
              "203100149@almaata.ac.id",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/logo/kampus_uaa.png'),
                  fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
