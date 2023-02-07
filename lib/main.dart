import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:get/get.dart';
import 'package:orangers/Server/AllJobController.dart';

void main() {
  usePathUrlStrategy();
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final AllJobsController allJobsController = Get.put(AllJobsController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(251, 175, 204, 13),
        title: allJobsController.AllJobs.length > 1 ? Text("yes") : Text("no"),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 177, 7, 177),
        width: 200,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Container(
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
    );
  }
}
