import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/card.dart';


class teskbar extends StatelessWidget {
  const teskbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Task"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),

      body:Column(
        children: [
          TaskCard(
            key: UniqueKey(), // Provide a Key for the TaskCard widget
            title: "1",
            description: "Your 2nd task",
          ),
          TaskCard(
            key: UniqueKey(), // Provide a Key for the TaskCard widget
            title: "2",
            description: "Hello World ",
          ),
          TaskCard(
            key: UniqueKey(), // Provide a Key for the TaskCard widget
            title: "3",
            description: " Hello from the other side ",
          )



        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {  },
        child: Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}
