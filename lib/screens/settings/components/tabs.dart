
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class Tab {
  final String? svgSrc, title;
  final Color? color;
  
  Tab({
    this.svgSrc,
    this.title,
    this.color,
  });

}

class TabsWidgets extends StatelessWidget {
  const TabsWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Categories",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            // ElevatedButton.icon(
            //   style: TextButton.styleFrom(
            //     padding: EdgeInsets.symmetric(
            //       horizontal: defaultPadding * 1.5,
            //       vertical:
            //           defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
            //     ),
            //   ),
            //   onPressed: () {},
            //   icon: Icon(Icons.add),
            //   label: Text("Add New"),
            // ),
          ],
        )
      ],
    );
  }
}

