import 'package:class_no_12/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'camera.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Demo App")),
        body: Column(
          children: [
          ],
        ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Bill Gates"),
                accountEmail: Text("bill@gmail.com"),
                currentAccountPicture: Image.network("https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5f4ebe0c87612dab4f12a597%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D292%26cropX2%3D3684%26cropY1%3D592%26cropY2%3D3987"),

            ),
            ListTile(
              leading: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkHMrDgGFeK4jxThCiH46xM5F_9XmzpvvvCQ&usqp=CAU"),
              title: Text("Camera"),
              trailing: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWQLTb64NvN6w8SEpnV-xdQAG9OUrqDeFqpg&usqp=CAU"),
              onTap: (){
                Navigator.push(
                    context,
                  MaterialPageRoute(
                      builder: (context) => Camera()
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings
              ),
              title: Text("Setting"),
              trailing: Icon(
                  Icons.arrow_forward_ios
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Setting(),
                  )
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.lock_clock
              ),
              title: Text("Clock"),
              trailing: Icon(
                  Icons.arrow_forward_ios
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.add_photo_alternate
              ),
              title: Text("Gallary"),
              trailing: Icon(
                  Icons.arrow_forward_ios
              ),
            ),
            ListTile(

              title: Text("Gamepad"),

            ),
            ListTile(
              leading: Icon(
                Icons.arrow_back
              ),
              title: Text("Logout"),
              trailing: Icon(
                  Icons.arrow_forward_ios
              ),
              onTap: (){

              },
            ),

          ],
        ),
      ),

    );
  }

}
