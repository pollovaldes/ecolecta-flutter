import 'package:ecolecta/screens/home_page.dart';
import 'package:ecolecta/screens/scan_page.dart';
import 'package:ecolecta/screens/settings_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPageIndex = 0;
  String _appBarTitle = "¡Hola de nuevo, Arturo!";
  List<Widget> _actionButtons = [
    Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 16.0, 0.0),
      child: IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
        centerTitle: false,
        actions: _actionButtons,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: onTabTapped,
        selectedIndex: _currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.recycling), label: 'Inicio'),
          NavigationDestination(icon: Icon(Icons.qr_code), label: 'Escanear'),
          NavigationDestination(
              icon: Icon(Icons.settings), label: 'Configuración'),
        ],
      ),
      body: <Widget>[
        const HomePage(),
        const ScanPage(),
        const SettingsPage(),
      ][_currentPageIndex],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentPageIndex = index;

      switch (index) {
        case 0:
          {
            _appBarTitle = '¡Hola de nuevo, Arturo!';
            _actionButtons = [
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 16.0, 0.0),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.person)),
              ),
            ];
          }
          break;
        case 1:
          {
            _appBarTitle = 'Escanea un producto';
            _actionButtons = [
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 16.0, 0.0),
                child:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.help)),
              )
            ];
          }
          break;
        case 2:
          {
            _appBarTitle = 'Configuración';
            _actionButtons = [];
          }
          break;
      }
    });
  }
}
