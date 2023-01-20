import 'package:flutter/material.dart';
import 'package:store_app/routes.dart';
import 'dart:ui' as ui;
import '../my_elevated_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLogged = true;
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: Image.asset("assets/nomin_logo.png",
              width: 100, height: 28, fit: BoxFit.fill),
        ),
        backgroundColor: Color(0xff),
        elevation: 0,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 104, 104, 104)),
      ),
      body: const Center(
        child: LoginForm(),
      ),

      // TODO : Хажуу талын бургер цэс
      drawer: Drawer(
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
              trailing: Container(
                child: Switch(
                  value: light,
                  activeColor: Colors.blue,
                  onChanged: ((value) {
                    setState(() {
                      light = value;
                    });
                  }),
                ),
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
                          color: Colors.grey[400], fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: Логин хуудасны форм хэсэг
class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  void onLoginPage(BuildContext context) {
    Navigator.pushNamed(context, RouteName.SectorPage.route);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Text(
                  "Store App",
                  style: TextStyle(
                    color: Color(0xff406EC4),
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    // foreground: Paint()
                    //   ..shader = ui.Gradient.linear(
                    //     const Offset(0, 50),
                    //     const Offset(350, 10),
                    //     <Color>[
                    //       Color(0xff0458AF),
                    //       Color(0xff5EE2CC),
                    //     ],
                    //   ),
                  ),
                ),
                SizedBox(height: 50),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffE7E7E7),
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text("Нэвтрэх нэр"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffE7E7E7),
                    prefixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text("Нууц үг"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 150, top: 20),
                  child: InkWell(
                    onTap: () => {},
                    child: Text(
                      'Нууц үгээ мартсан уу?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          color: Color(0xff89939E)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // <-- Radius
                      ),
                      backgroundColor: Color(0xff406EC4),
                    ),
                    onPressed: () => onLoginPage(context),
                    child: Text("Нэвтрэх"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
