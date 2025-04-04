import 'package:flutter/material.dart';

class ClientManager extends StatefulWidget {
  @override
  _ClientManagerState createState() => _ClientManagerState();
}

class _ClientManagerState extends State<ClientManager> {
  final List<String> clients = [];

  void _addClient() {
    setState(() {
      clients.add("Client ${clients.length + 1}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Client Management')),
      body: Column(
        children: [
          ElevatedButton(onPressed: _addClient, child: Text("Add Client")),
          Expanded(
            child: ListView.builder(
              itemCount: clients.length,
              itemBuilder: (context, index) => ListTile(title: Text(clients[index])),
            ),
          ),
        ],
      ),
    );
  }
}
