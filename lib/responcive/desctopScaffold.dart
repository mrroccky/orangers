import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orangers/Components/JobsCard/jobscard.dart';
import '../Server/AllJobController.dart';
import '../Server/GetAllJobsServieses.dart';

class DesctopScaffold extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(251, 175, 204, 13),
        title: Text("orangers"),
      ),
      drawer: Drawer(
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  GetAllJobsServises().GetJobs();
                  print("😍😍😍😍😍😍😍 reaponce ok");
                },
                child: const Text("Load"))
          ],
        ),
      ),
      body: Row(
        children: [
          Expanded(flex: 1, child: Card()),
          Expanded(flex: 1, child: Card()),
         JobsCard(),
          ],
      ),
    );
  }
}
