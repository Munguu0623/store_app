// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:store_app/routes.dart';

class SectorData {
  String name;
  double price;

  SectorData({
    required this.name,
    required this.price,
  });
}

class SectorPage extends StatefulWidget {
  @override
  _SectorPageState createState() => new _SectorPageState();
}

class _SectorPageState extends State<SectorPage> {
  Widget appBarTitle = new Text("Салбарын тохиргоо");
  Icon actionIcon = new Icon(Icons.search);

  void onHomePage() {
    Navigator.pushNamed(
      context,
      RouteName.HomePage.route,
    );
  }

  List sectorList = [
    SectorData(name: "Facebook", price: 339.1),
    SectorData(name: "A10 NETWORKS INC.", price: 10.34),
    SectorData(name: "Intel Corp", price: 56.96),
    SectorData(name: "HP Inc", price: 32.43),
    SectorData(name: "Advanced Micro Devices Inc.", price: 77.44),
    SectorData(name: "Apple Inc", price: 133.98),
    SectorData(name: "Amazon.com, Inc.", price: 3505.44),
    SectorData(name: "Microsoft Corporation", price: 265.51),
    SectorData(name: "Facebook", price: 339.1),
    SectorData(name: "A10 NETWORKS INC.", price: 10.34),
    SectorData(name: "Intel Corp", price: 56.96),
    SectorData(name: "HP Inc", price: 32.43),
    SectorData(name: "Advanced Micro Devices Inc.", price: 77.44),
    SectorData(name: "Apple Inc", price: 133.98),
    SectorData(name: "Amazon.com, Inc.", price: 3505.44),
    SectorData(name: "Microsoft Corporation", price: 265.51)
  ];

  // List<SectorModel> _data = [];
  // @override
  // initState() {
  //   _getData();
  // }

  // Future<List<SectorModel>> _getData() async {
  //   String res =
  //       await DefaultAssetBundle.of(context).loadString("assets/sector.json");
  //   return SectorModel.fromList(jsonDecode(res));
  // }

  // var res = SectorModel.fromJson(jsonDecode("assets/sector.json"));

  // final sectorData = SectorModel(
  //   id: 2,
  //   nameSector: "УИД электрон төрөлжсөн дэлгүүр",
  //   locationKey: 00202,
  // );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: appBarTitle,
        actions: <Widget>[
          new IconButton(
            icon: actionIcon,
            onPressed: () {
              setState(
                () {
                  if (this.actionIcon.icon == Icons.search) {
                    this.actionIcon = new Icon(Icons.close);
                    this.appBarTitle = new TextField(
                      style: new TextStyle(
                        color: Colors.white,
                      ),
                      decoration: new InputDecoration(
                          prefixIcon:
                              new Icon(Icons.search, color: Colors.white),
                          hintText: "хайх...",
                          hintStyle: new TextStyle(color: Colors.white)),
                    );
                  } else {
                    this.actionIcon = new Icon(Icons.search);
                    this.appBarTitle = new Text("Салбарын тохиргоо");
                  }
                },
              );
            },
          ),
        ],
        backgroundColor: Color(0xff406EC4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(18),
          ),
        ),
        toolbarHeight: 90,
        elevation: 0,
      ),

// **********************AppBar End***************************
      body: Center(
        child: ListView.builder(
          itemCount: sectorList.length,
          itemBuilder: (context, index) {
            var itemLenght = index + 1;
            return Column(
              children: <Widget>[
                ListTile(
                  subtitle: Text("\$ ${sectorList[index]?.price}"),
                  title: Text(sectorList[index]?.name),
                  leading: Text(
                    "$itemLenght",
                    style: TextStyle(fontSize: 30),
                  ),
                  // Icon(
                  //   Icons.location_city_sharp,
                  //   color: Color(0xff406EC4),
                  // ),
                  trailing: Icon(
                    Icons.chevron_right_rounded,
                    color: Color(0xff406EC4),
                  ),
                  onTap: () => onHomePage(),
                ),
                Divider(),
              ],
            );
          },
        ),
      ),
    );
  }
}
