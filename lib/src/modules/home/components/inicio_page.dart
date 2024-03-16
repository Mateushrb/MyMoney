import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Conteúdo do Início'),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            foregroundColor: Colors.white,
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(bottom: 25.0),
          child: FloatingActionButton(
            onPressed: () {
              // Lógica para o botão
              print('Botão de adicionar pressionado!');
            },
            child: Icon(Icons.add, color: Colors.white),
            backgroundColor: Colors.green[400],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
