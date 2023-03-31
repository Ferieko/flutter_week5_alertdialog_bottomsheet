import 'package:flutter/material.dart';
import 'package:flutter_week5_dialog_bottom_sheets/Task_detail.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Task Management"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.person))
          ],
        ),
        body: Container(
          color: Colors.red,
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => const TaskDetail())),
        ));
  }
}
//import 'package:flutter/material.dart';

