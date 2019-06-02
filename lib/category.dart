import 'package:flutter/material.dart';


final _rowHeight = 100.0;
final _borderRadius =BorderRadius.circular(_rowHeight/2.0);

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconData;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconData,
}) : assert( name != null),
     assert( color != null),
     assert(iconData != null),
     super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
          color: Colors.transparent,
          height: _rowHeight,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: InkWell(
              highlightColor: color,
              borderRadius: _borderRadius,
              splashColor: color,
              onTap: () {
                print('I was trcapped');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                          iconData,
                      size: 60.0,
                      ),
                    ),
                    Center(
                        child: Text(
                            name,
                          textAlign: TextAlign.center,
                          style:Theme.of(context).textTheme.headline,
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));

  }
}
