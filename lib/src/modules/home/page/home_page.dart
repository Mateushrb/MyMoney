import 'package:flutter/material.dart';
import 'package:my_money/src/modules/home/components/inicio_page.dart';
import 'package:my_money/src/modules/home/components/pesquisa_page.dart';
import 'package:my_money/src/modules/home/components/notificacao_page.dart';
import 'package:my_money/src/modules/home/components/perfil_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    InicioPage(),
    PesquisaPage(),
    NotificacaoPage(),
    PerfilPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sair'),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: Colors.green),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
            color: Colors.green),
            label: 'Pesquisa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,
            color: Colors.green),
            label: 'Notificação',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,
            color: Colors.green),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[300],
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(color: Colors.green[100]),
        onTap: _onItemTapped,
      ),
    );
  }
}
