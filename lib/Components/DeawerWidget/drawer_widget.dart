
import 'package:flutter/material.dart';

class DawerWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[200],
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
               
              },
              child: const Text("Load"))
        ],
      ),
    );
  }
}
