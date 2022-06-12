import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen(this.addTask);

  final Function addTask;

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              controller: controller,
              autofocus: true,
              decoration: const InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                // labelText: '事项标题',
                // hintText: '请输入事项',
                // helperText: '不能为空',
                // errorText: '请输入事项',
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlueAccent,
              ),
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  addTask(controller.text);
                  controller.clear();
                }
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
