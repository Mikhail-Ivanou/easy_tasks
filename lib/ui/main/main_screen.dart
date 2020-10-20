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
