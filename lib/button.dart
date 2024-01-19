import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeButtonExample extends StatefulWidget{
  const LikeButtonExample({super.key});
  @override
  State<LikeButtonExample> createState() => _LikeButtonExampleState();
}
class _LikeButtonExampleState extends State<LikeButtonExample>{
  final GlobalKey<LikeButtonState> _key =GlobalKey<LikeButtonState>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        Text('A bare like button:'),
        LikeButton(key: _key),
      ]
    );
  }
}
