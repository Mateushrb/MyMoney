import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage.RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Email',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Digite seu email',
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Nome',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Digite seu nome',
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Telefone',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Digite seu telefone',
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Idade',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Digite sua idade',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Adicione a lógica para processar os dados do formulário aqui
              },
              child: const Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}
