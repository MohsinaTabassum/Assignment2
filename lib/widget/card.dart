import 'package:flutter/cupertino.dart';

class TaskCard extends StatefulWidget {
  final String title;
  final String description;

  const TaskCard({required Key key, required this.title, required this.description})
      : super(key: key);

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xfff2f3f8),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(15),
      margin: EdgeInsets.only(
        top: 10,
        bottom: 0,
        left: 15,
        right: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
          ),
          Text(widget.description),
          Align(
            alignment: Alignment.centerRight,
            child: Text(DateTime.now().toString().split(".")[0]),
          ),
        ],
      ),
    );
  }
}
