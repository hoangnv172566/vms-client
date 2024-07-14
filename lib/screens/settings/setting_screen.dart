import 'package:admin/responsive.dart';
import 'package:admin/screens/settings/components/header.dart';
import 'package:admin/screens/settings/components/tabs.dart';
import 'package:admin/screens/settings/components/camera_table.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            TabsWidgets(),
            CameraTableWidget(),
          ],
        ),
      ),
    );
  }
}
