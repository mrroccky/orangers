import 'package:flutter/material.dart';
import '../Components/DeawerWidget/drawer_widget.dart';
import '../Components/JobsCard/jobscard.dart';

class TabletScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(251, 175, 204, 13),
        title: Text("orangers"),
      ),
      drawer: DawerWidget(),
      body: Row(
        children: [
          Expanded(flex: 1, child: Card()),
          JobsCard(),
        ],
      ),
    );
  }
}
