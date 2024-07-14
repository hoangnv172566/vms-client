import 'package:admin/controllers/MenuAppController.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

// Define a ChangeNotifier to manage the selected layout state
class LayoutSelectionNotifier with ChangeNotifier {
  String _currentSelectedLayout = '1 cameras';

  String get currentSelectedLayout {
    return _currentSelectedLayout;
  }

  set currentSelectedLayout(String value) {
    _currentSelectedLayout = value;
    notifyListeners(); // Notify listeners when the layout changes
  }
}

class SelectLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LayoutSelectionNotifier>(
        create: (context) => LayoutSelectionNotifier(),
        child: Consumer<LayoutSelectionNotifier>(
            builder: (context, layoutSelection, _) => Row(children: [
                  Expanded(
                      flex: 2,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        hint: Text("Select a layout"),
                        items: <String>['1 cameras', '4 cameras', '9 cameras']
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          // Handle change
                          layoutSelection.currentSelectedLayout = newValue!;
                        },
                      )
                      ),
                  ElevatedButton.icon(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 1.5,
                        vertical: defaultPadding /
                            (Responsive.isMobile(context) ? 2 : 1),
                      ),
                    ),
                    onPressed: () {
                      print(layoutSelection.currentSelectedLayout);
                    },
                    icon: Icon(Icons.add),
                    label: Text("Save Configuration"),
                  ),
                ])));
  }
}
