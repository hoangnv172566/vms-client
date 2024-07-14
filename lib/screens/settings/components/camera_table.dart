import 'package:admin/models/Camera.dart';

import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

class CameraTableWidget extends StatelessWidget {
  CameraTableWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text("Cameras", style: Theme.of(context).textTheme.titleMedium),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,

              columns: [
                DataColumn(label: Text("No.")),
                DataColumn(label: Text("Name")),
                DataColumn(label: Text("Location")),
                DataColumn(label: Text("Status"))
              ],

              rows: List.generate(demoCameras.length, 
                      (index) => cameraTableRow(demoCameras[index])),

            )
          ) 
        ]
      )
    );
  }
}


DataRow cameraTableRow(Camera camera) {
  return DataRow(
    cells: [
      DataCell(Text(camera.id.toString())),
      DataCell(Text(camera.name!)),
      DataCell(Text(camera.location!)),
      DataCell(Text(camera.status! ? "Active" : "Inactive"))
    ],
  );
}