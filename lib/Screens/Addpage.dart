import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DraggableScrollableSheet(builder: (context, scrollController) {
        return Container(
          color: Colors.blue,
          child: ListView.builder(
            itemCount: 10,
            controller: scrollController,
            itemBuilder: (context, index) {
              return ListTile(
                title: Center(
                  child: Text('Item $index'),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
