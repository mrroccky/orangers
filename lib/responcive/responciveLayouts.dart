import 'package:flutter/material.dart';

class ResponciveLayouts extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desctopScaffold;
  ResponciveLayouts({
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desctopScaffold,
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth <= 425) {
        return mobileScaffold;
      } else if (constrains.maxWidth <= 768) {
        return tabletScaffold;
      } else if (constrains.maxWidth > 768) {
        return desctopScaffold;
      }
      throw const Scaffold(
        body: Center(child: Text("We cant recognise this device")),
      );
    });
  }
}
