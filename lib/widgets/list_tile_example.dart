import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTileExample extends StatefulWidget {
  const ListTileExample({super.key});

  @override
  State<ListTileExample> createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ListTileExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            child: ListTile(
              title: Text("Bosh Sarlavha"),
              subtitle: Text("Bu ikkinchi darajali matn"),
              tileColor: Colors.yellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              leading: CircleAvatar(),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
        ),
      ),
    );
  }
}
