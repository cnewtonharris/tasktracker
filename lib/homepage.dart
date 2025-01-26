import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasktracker/task_provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Tracker'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                Provider.of<TaskProvider>(context, listen: false).addTask('data');
              },
              child: Text('data'))
        ],
      ),
    );
  }
}
