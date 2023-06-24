import 'package:aplikasi_portal/screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_portal/drawer/drawer_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Portal - UAA",
          style: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 14, 96, 163),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Image.asset(
                    'assets/logo/uaa_logo.png',
                    width: 180,
                    height: 180,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10, width: 10),
            Container(
              width: 1500,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                "Login to your account",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontFamily: 'Nunito',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontFamily: 'Nunito',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              constraints: BoxConstraints.expand(
                height: 50,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DrawerPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 14, 96, 163),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                const Text(
                  "Forget your account ?",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Nunito',
                  ),
                ),
                TextButton(
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito',
                      color: Color.fromARGB(255, 14, 96, 163),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ),
                    );
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "~ Or sign in with ~",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Nunito',
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade300,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 184, 183, 183),
                        blurRadius: 4,
                        offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () async {},
                    icon: Image.asset('assets/icons/google.png'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade300,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 184, 183, 183),
                        blurRadius: 4,
                        offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/icons/ios.png'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade300,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 184, 183, 183),
                        blurRadius: 4,
                        offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/icons/facebook.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
