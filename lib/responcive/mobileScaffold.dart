import 'package:flutter/material.dart';

import '../Components/JobsCard/jobscard.dart';
import '../Server/GetAllJobsServieses.dart';

class MobileScaffold extends StatelessWidget {
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
         JobsCard(),
          ],
      ),
    );
 }
}

