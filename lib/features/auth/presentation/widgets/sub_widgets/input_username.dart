import 'package:flutter/material.dart';

class Inputusername extends StatefulWidget {
  final TextEditingController usernameController;

  const Inputusername(this.usernameController);

  @override
  _InputusernameState createState() => _InputusernameState();
}

class _InputusernameState extends State<Inputusername> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          controller: widget.usernameController,
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Colors.lightBlueAccent,
            labelText: 'Name',
            labelStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}
