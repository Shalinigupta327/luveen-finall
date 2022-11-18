import 'package:flutter/material.dart';
import 'package:luveen/features/auth/screens/auth_screen.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0), // here the desired height
        child: AppBar(
          title: new Padding(
            padding: const EdgeInsets.only(left: 200.0),
            child: new Text(
              "Luveen",
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 30.0,
                  color: Colors.white),
            ),
          ),
          automaticallyImplyLeading: true,
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 35.0, 25.0, 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter your email address:",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Colors.black54),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: SizedBox(
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 35),
              const Text(
                "Create a new password:",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Colors.black54),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: SizedBox(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 35),
              const Text(
                "Re-type your password:",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Colors.black54),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: SizedBox(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 35),
            ],
          )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AuthScreen()),
            );
          },
          child: const Icon(Icons.check)),
      //BUTTON LOCATION
    );
  }
}
