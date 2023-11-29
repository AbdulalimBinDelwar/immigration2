import 'package:flutter/material.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyHomepageState();
  }
}

class MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //leading: Icon(Icons.drag_handle_outlined,color: Colors.black45,),
          actionsIconTheme: IconThemeData(color: Colors.cyan),
          backgroundColor: Colors.white30,

          // title: const Text('Appbar'),

       ),
        drawer: Drawer(
            shape: RoundedRectangleBorder(borderRadius:BorderRadius.zero),
            backgroundColor: Colors.white,
            child: ListView(children: const [
          UserAccountsDrawerHeader(
            margin: EdgeInsets.only(left: 55),
           decoration: BoxDecoration(
               shape: BoxShape.rectangle,
               color:Colors.white),
            accountName: Text(
              'Guest User',
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              'guest@example.com',
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            title: Text('Important Resources'),
            leading: Icon(Icons.restore_page_outlined),
          ),
          ListTile(
            title: Text('Quick Links'),
            leading: Icon(Icons.link),
          ),
          ListTile(
            title: Text('About us'),
            leading: Icon(Icons.contact_phone_outlined),
          ),
          ListTile(
            title: Text('Contact us'),
            leading: Icon(Icons.phone),
          ),
          ListTile(
            title: Text('Premium Services'),
            leading: Icon(Icons.add_business_outlined),
          ),
          ListTile(
            title: Text('Share'),
            leading: Icon(Icons.share),
          ),
          ListTile(
            title: Text('Terms and conditions'),
            leading: Icon(Icons.task_alt_rounded),
          ),
          ListTile(
            title: Text(' FAQ'),
            leading: Icon(Icons.question_mark),
          ),
        ])));
  }
}
