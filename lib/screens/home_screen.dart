import 'package:flutter/material.dart';
import 'flight_planner.dart';
import 'media_storage.dart';
import 'client_manager.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DronePilot Pro')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FlightPlanner())),
              child: Text("Flight Planner"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MediaStorage())),
              child: Text("Media Storage"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ClientManager())),
              child: Text("Client Management"),
            ),
          ],
        ),
      ),
    );
  }
}
