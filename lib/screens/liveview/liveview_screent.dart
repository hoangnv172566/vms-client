import 'package:admin/responsive.dart';
import 'package:admin/screens/liveview/components/header.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';


class LiveViewScreen extends StatelessWidget {
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [],
                  ),
                ),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
