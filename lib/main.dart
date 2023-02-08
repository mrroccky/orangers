import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:get/get.dart';
import 'package:orangers/Server/AllJobController.dart';
import 'package:orangers/Server/GetAllJobsServieses.dart';
import 'package:orangers/responcive/desctopScaffold.dart';
import 'package:orangers/responcive/mobileScaffold.dart';
import 'package:orangers/responcive/responciveLayouts.dart';
import 'package:orangers/responcive/tabletScaffold.dart';

void main() {
  usePathUrlStrategy();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: ResponciveLayouts(
      mobileScaffold: MobileScaffold(),
      tabletScaffold: TabletScaffold(),
      desctopScaffold: DesctopScaffold(),
    ),
  ));
}










/*
Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Text(allJobsController.allJobs.length.toString()),
              color: Color.fromARGB(255, 0, 129, 235),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Color.fromARGB(255, 226, 151, 12),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Color.fromARGB(255, 10, 230, 127),
            ),
          ),
        ],
      ),
 */