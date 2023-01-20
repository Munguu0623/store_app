import 'package:flutter/material.dart';

class SettingesWidget extends StatelessWidget {
  const SettingesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // const DrawerHeader(
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //   ),
              //   child: Text('Drawer Header'),
              // ),\
              SizedBox(
                height: 80,
              ),
              ListTile(
                title: Text(
                  'Dark mode',
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ListTile(
                title: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Store app:",
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap ",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ),
                    SizedBox(
                      height: 250,
                    ),
                    ListTile(
                      title: Text(
                        'Холбоо барих утас:',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      trailing: Text("7799-1111"),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Хувилбар 1.0.11",
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w300),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
