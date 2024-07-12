import 'package:admin/controllers/MenuAppController.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:admin/screens/liveview/liveview_screent.dart';

import 'components/side_menu.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget _currentScreen = DashboardScreen();

  void _updateScreen(Widget screen) {
    setState(() {
      print("Update screen");

      _currentScreen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: SideMenu(
        onMenuItemClicked: (screen) {
          _updateScreen(screen);
          _scaffoldKey.currentState?.openEndDrawer(); // Close the drawer

        },
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(
                  onMenuItemClicked: (screen) {
                    _updateScreen(screen);
                    _scaffoldKey.currentState?.openEndDrawer(); // Close the drawer

                  },
                ),
              ),
            Expanded(
              flex: 5,
              child: _currentScreen,
            ),
            
          ],
        ),
      ),
    );
  }
}
