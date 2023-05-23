import 'package:flutter/material.dart';

class SocialItem extends StatelessWidget {
  String image;
  SocialItem(this.image);
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
          child: InkWell(
        splashColor: Colors.green,
        child: Padding(
            padding: const EdgeInsets.all(
          15,
        )),
      )),
    );
  }
}
