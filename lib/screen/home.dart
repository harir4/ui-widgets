import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: TabBarView(
              children: <Widget>[
                Icon(
                  Icons.photo_camera,
                  size: 100,
                ),
                Icon(
                  Icons.people_outline,
                  size: 100,
                ),
                Icon(
                  Icons.event,
                  size: 100,
                ),
                Icon(
                  Icons.movie,
                  size: 100,
                )
              ],
            ),
            appBar: AppBar(
              bottom: TabBar(
                indicatorColor: Colors.black,
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.photo_camera),
                  ),
                  Tab(icon: Icon(Icons.people_outline)),
                  Tab(
                    icon: Icon(Icons.event),
                  ),
                  Tab(
                    icon: Icon(Icons.movie),
                  ),
                ],
              ),
              backgroundColor: Color(0xff0000ff),
              title: Text('FACEBOOK'),
              actions: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
                PopupMenuButton(
                  color: Color(0xff0000ff),
                  icon: Icon(Icons.more_vert),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text('Settings'),
                    ),
                    PopupMenuItem(
                      child: Text('New Group'),
                    ),
                  ],
                )
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.white,
              selectedItemColor: Color(0xff0000ff),
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.save), title: Text('Saved')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: Text('Home')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.attach_file), title: Text('Attach'))
              ],
            ),
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Color(0xff0000ff)),
                    accountName: Text('John Cena'),
                    accountEmail: Text('john@gmail.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'http://www.gstatic.com/tv/thumb/persons/487578/487578_v9_ba.jpg'),
                    ),
                  ),
                  ListTile(
                    title: Text('PROFILE'),
                    leading: Icon(Icons.person_outline),
                  ),
                  ListTile(
                    title: Text('PHOTOS'),
                    leading: Icon(Icons.add_a_photo),
                  ),
                  ListTile(
                    title: Text('SOCIAL'),
                    leading: Icon(Icons.people_outline),
                  ),
                  ListTile(
                    title: Text('SENT'),
                    leading: Icon(Icons.send),
                  ),
                  ListTile(
                    title: Text('EXIT'),
                    leading: Icon(Icons.exit_to_app),
                  )
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.chat_bubble_outline),
              backgroundColor: Color(0xff0000ff),
            ),
          ),
        ));
  }
}
