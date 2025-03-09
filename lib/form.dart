import 'package:flutter/material.dart';

class Login_Form extends StatefulWidget {
  @override
  State<Login_Form> createState() => _Login_FormState();
}

class _Login_FormState extends State<Login_Form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 100.0),
              child: Text(
                "Login Here Dear Programmer!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'poppins'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 5.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Username",
                    labelStyle: TextStyle(
                      fontSize: 20.0,
                    )),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 5.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: 20.0,
                    )),
                obscureText: true,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 5.0),
              child: SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.orange),
                      padding: WidgetStateProperty.all(
                          EdgeInsets.symmetric(vertical: 13, horizontal: 20)),
                      textStyle:
                          WidgetStateProperty.all(TextStyle(fontSize: 23))),
                  child: Text("Login"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
