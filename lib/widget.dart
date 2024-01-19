import 'package:flutter/material.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}): super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool? ischecked=false;

  @override
  Widget build(BuildContext context) {
    return Center(
  child: Checkbox(value: ischecked,
  activeColor: Colors.deepPurple, onChanged: (newBool){
    setState(() {
      ischecked=newBool;
    });
  },
    ),
    );
  }
}