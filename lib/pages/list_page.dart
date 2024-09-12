import 'package:flutter/material.dart';

import '../models/user.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});
  final List<User> list = userList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuários'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Buscar usuário',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                final user = list[index];

                return ListTile(
                  leading: const Icon(Icons.usb_rounded),
                  title: Text(user.name),
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Adicionar usuário',
        child: const Icon(Icons.add),
      ),
    );
  }
}
