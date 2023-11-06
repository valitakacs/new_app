import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 25),
      child: Container(
        padding: EdgeInsets.all(19),
        decoration: BoxDecoration(
          color: HexColor('#FFFFFF'),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            // checkbox
            Transform.scale(
              scale: 1.5,
              child: Checkbox(
                shape: CircleBorder(),
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: HexColor('#53DA69'),
                checkColor: HexColor("#399649"),
              ),
            ),

            // task name
            Text(
              taskName,
              style: TextStyle(
                color: HexColor('#071D55'),
                fontSize: 16,
                fontFamily: 'R.font.roboto',
                fontWeight: FontWeight.w500,
                decoration: taskCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
