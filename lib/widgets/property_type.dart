import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_state/providers/property.dart';
import 'package:real_state/services/style.dart';

import 'custom_text.dart';

class PropertyType extends StatefulWidget {
  final String image;
  final String title;


  PropertyType({@required this.image,@required this.title});

  @override
  _PropertyTypeState createState() => _PropertyTypeState();
}

class _PropertyTypeState extends State<PropertyType> {
  @override
  Widget build(BuildContext context) {
    PropertyProvider property = Provider.of<PropertyProvider>(context);

    return Container(
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: property.selectedProperty == Property.HOUSE && widget.title == "House" || property.selectedProperty == Property.FLAT && widget.title == "Flat" ? black : grey[400], offset: Offset(2, 3), blurRadius: 6)
          ]),
      height: 240,
      width: 220,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/${widget.image}"),
            CustomText(
              msg: widget.title,
              size: 20,
              color: grey,
            )
          ],
        ),
      ),
    );
  }
}
