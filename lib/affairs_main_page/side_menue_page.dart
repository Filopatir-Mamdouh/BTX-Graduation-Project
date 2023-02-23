// ignore_for_file: prefer_const_constructors

import 'package:bt_x/affairs_main_page/affairs_side_menue.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'dart:html';

class side_menue_page extends StatelessWidget {
  const side_menue_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Row(
        children: [sidemenu()],
      ),
    );
  }
}
