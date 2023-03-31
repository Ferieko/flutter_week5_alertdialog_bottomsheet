import 'package:flutter/material.dart';
import 'package:flutter_week5_dialog_bottom_sheets/widget/ElevatedButtonBuilder.dart';

class TaskDetail extends StatelessWidget {
  const TaskDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Create Task'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Form(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Task Title",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.grey.shade500))),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                            child: ElevatedButtonBuilder(
                              buttonTitle: 'Create Task',
                              onPressed: () {
                                //_showConfirmationDialog(context);
                                 _showConfirmationDialogCustom(context);
                                //_showConfirmationBottomSheets(context);
                              },
                            )),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  /// Alert Dialog
  void _showConfirmationDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: const Text(
              "Pastikan data sudah benar",
            ),
            actions: [
              ElevatedButtonBuilder(
                buttonTitle: 'YA',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              ElevatedButtonBuilder(
                buttonTitle: 'TIDAK',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  /// Alert Dialog Custom
  void _showConfirmationDialogCustom(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return Stack(
            alignment: Alignment.center,
            children: const [
              Material(
                child: SizedBox(
                  width: 500,
                  height: 600,
                  child: Text("Hello Custom Dialog"),
                ),
              ),
            ],
          );
        });
  }


  void _showConfirmationBottomSheets(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
              height: 200,
              child: Column(
                children: [
                  const Text("Bottom Sheets"),
                  TextFormField(),
                  ElevatedButtonBuilder(
                    buttonTitle: 'TEST',
                    onPressed: () {},
                  )
                ],
              ));
        });
  }
}
