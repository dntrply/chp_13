import 'package:flutter/material.dart';
import 'package:chp_13/category.dart';

// Pass to custom app
// The icon, color, and text should be passed into the Category widget upon instantiation. They should be required.

const _categoryName= 'Lake';
const _categoryIcon = Icons.list;
const _categoryColor = Colors.orange;

void main() {
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Piyush Unit Converter 1',
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Category(
            color: _categoryColor,
            name: _categoryName,
            iconData: _categoryIcon,
          ),
        ),
      ),
    );
  }

}
