import 'package:flutter/material.dart';

class CommonNavigationDrawer extends StatelessWidget {
  final String side;
  CommonNavigationDrawer({required this.side});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: const Column(
              children: [
                Stack(children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        child: CircleAvatar(
                          radius: 40.0,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 38.0,
                            backgroundImage:
                                AssetImage('/images/default_profile.png'),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 12.0,
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 15.0,
                                  color: Color(0xFF404040),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )),
                ]),
                const Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              // NavigationHelper.push(context, MyHomePage());
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_outlined),
            title: const Text('Add Habit'),
            onTap: () {
              //NavigationHelper.push(context, Setting());
            },
          ),
          ListTile(
            leading: const Icon(Icons.format_quote_outlined),
            title: const Text('Motivational quotes'),
            onTap: () {
              //NavigationHelper.push(context, TodoList());
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.brightness_6),
          //   title: const Text('Toggle Theme'),
          //   onTap: () {
          //     Navigator.pop(context);
          //     //ThemeProvider.of(context).toggleTheme();
          //   },
          // ),
        ],
      ),
    );
  }
}
