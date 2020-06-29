import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.all(0), children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('User'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
            ),
          ),
          ListTile(
              leading: Icon(Icons.person),
              title: Text('login'),
              subtitle: Text('NEW APP'),
              trailing: Icon(Icons.edit),
              onTap: () {}),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('shipment'),
            subtitle: Text('NEW APP'),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Account Balance'),
            subtitle: Text('NEW APP'),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Support'),
            subtitle: Text('NEW APP'),
            trailing: Icon(Icons.edit),
          )
        ]),
      );
  }
}