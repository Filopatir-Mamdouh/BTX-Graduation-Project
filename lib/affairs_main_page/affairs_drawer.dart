// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:bt_x/affairs_main_page/affairs_side_menue.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'dart:html';

class affairsDrawer extends StatelessWidget {
  PageController page = PageController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  affairsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: sidemenu(),
      ),
    );
  }
}
