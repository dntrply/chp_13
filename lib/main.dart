import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: unitConverterBar(),
        body: unitConverterTile(),
      ),
    ),
  );
}

Widget unitConverterBar() {
  return AppBar(
    title: Text('Unit Converter'),
  );
}

class unitConverterTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      color: Colors.green,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: InkWell(
          highlightColor: Colors.purple,
          onTap: () {
            print('I was trunjapped');
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.cake),
              ),
              Center(child: Text('Row Title'))
            ],
          ),
        ),
      ),
    ));
  }
}
