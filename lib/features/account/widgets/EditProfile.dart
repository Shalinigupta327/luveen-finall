import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // here the desired height
        child: AppBar(
          backgroundColor: Colors.green,
          title: new Padding(
            padding: const EdgeInsets.only(right: 150.0),
            child: new Text(
              "Edit Profile",
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 20.0,
                  color: Colors.white),
            ),
          ),
          automaticallyImplyLeading: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 35.0, 25.0, 25.0),
        child: Column(children: [
          Container(
              alignment: Alignment.center,
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/KU logo.png'),
                    fit: BoxFit.fill,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60.0))),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: SizedBox(
              width: 350,
              height: 45,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Username'),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: SizedBox(
              width: 350,
              height: 45,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: SizedBox(
              width: 350,
              height: 45,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Age',
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: SizedBox(
              width: 350,
              height: 45,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: SizedBox(
              width: 350,
              height: 45,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contact No',
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: SizedBox(
              width: 350,
              height: 45,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Gender',
                ),
              ),
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Done'),
        backgroundColor: Colors.green,
      ),
    );
  }
}
