import 'package:auto_route/auto_route.dart';
import 'package:easy_tasks/application/auth/auth_bloc.dart';
import 'package:easy_tasks/ui/core/widgets/fab.dart';
import 'package:easy_tasks/ui/main/by_category/categories_grid_page.dart';
import 'package:easy_tasks/ui/main/fav/fav_tasks_page.dart';
import 'package:easy_tasks/ui/main/tasks_by_priority_page.dart';
import 'package:easy_tasks/ui/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _widgetOptions = <Widget>[
    CategoryGridPage(),
    Container(),
    TasksByPriorityPage(),
    FavoriteTasks(),

    // TasksByCategory(),
    // CalendarTasks(),
    // PriorityTasks(),
    // FavoriteTasks()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Menu(),
        ],
        title: const Text('Easy tasks'),
      ),
      drawer: _getDrawer(),
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.lightBlueAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sort),
            label: 'Priority',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: Fab(),
    );
  }

  Widget _getDrawer() {
    final menuItems = getMenuItems(context);
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blue, Colors.red]),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 2.0)),
                ],
              ), //

              height: 104,
            ),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: menuItems.length,
                  itemBuilder: (context, position) {
                    final item = menuItems[position];
                    return ListTile(
                      onTap: () {
                        item.action.call();
                        Navigator.pop(context);
                      },
                      leading: Icon(
                        item.icon,
                        color: Colors.black,
                      ),
                      title: Text(
                        item.menuTitle,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 12,
            )
          ],
        ),
      ),
    );
  }
}

List<MenuItem> getMenuItems(BuildContext context) => [
      MenuItem(
          icon: Icons.settings,
          menuTitle: 'Settings',
          action: () {
            ExtendedNavigator.of(context).push(Routes.settingsPage);
          }),
      MenuItem(
          icon: Icons.category,
          menuTitle: 'Manage categories',
          action: () {
            ExtendedNavigator.of(context).push(Routes.manageCategoriesPage);
          }),
      MenuItem(
          icon: Icons.info_outline,
          menuTitle: 'About',
          action: () {
            ExtendedNavigator.of(context).push(Routes.aboutPage);
          }),
    ];

class MenuItem {
  final IconData icon;
  final String menuTitle;
  final Function action;

  MenuItem({this.icon, this.menuTitle, this.action});
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(onSelected: (value) async {
      context.bloc<AuthBloc>().add(const AuthEvent.signOut());
      ExtendedNavigator.of(context).replace(Routes.authScreen);
    }, itemBuilder: (BuildContext context) {
      return <PopupMenuItem<String>>[
        const PopupMenuItem<String>(
          value: 'logout',
          child: Text('Logout'),
        ),
      ];
    });
  }
}
