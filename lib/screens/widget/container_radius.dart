import 'package:flutter/material.dart';


class ContainerRadiusWidget extends StatelessWidget {
   ContainerRadiusWidget( {required this.height,required this.width,required this.title, super.key});
  double width, height;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      height: height,
      width: width,
      child: Center(child: Text(title)),
    );
  }
}
