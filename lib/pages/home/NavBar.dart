import 'package:cinemovie_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class NavBar extends StatelessWidget{


  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("zidan anggoro"),
            accountEmail: Text('praktikum@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://vignette.wikia.nocookie.net/tumblr-survivor-athena/images/7/7a/Blank_Avatar.png/revision/latest/scale-to-width-down/477?cb=20161204161729',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://www.pixelstalk.net/wp-content/uploads/images4/Spring-Wallpaper-HD-1.jpg',
                  ),
                  fit: BoxFit.cover,
                )
            ),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Friends'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Request'),
            onTap: () => null,
            trailing: Container(
              color: Colors.transparent,
              width: 20,
              height: 20,
              child: Text('3'),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Policies'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Log Out'),
            onTap: () async{
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context)=> loginpage()),
                      (Route<dynamic> route) => false);
              SharedPreferences preferences =
              await SharedPreferences.getInstance();
              await preferences.remove('nama');
            },
          ),
        ],
      ),
    );
  }
}