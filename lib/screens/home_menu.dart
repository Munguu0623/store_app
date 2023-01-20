import 'package:flutter/cupertino.dart';

class HomeBigMenu extends StatelessWidget {
  const HomeBigMenu({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xff)),
      height: 100,
      width: size.width * 0.8,
    );
  }
}
