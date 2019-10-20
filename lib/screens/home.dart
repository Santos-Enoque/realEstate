import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:provider/provider.dart';
import 'package:real_state/providers/property.dart';
import 'package:real_state/providers/rooms.dart';
import 'package:real_state/services/style.dart';
import 'package:real_state/widgets/custom_text.dart';
import 'package:real_state/widgets/property_type.dart';
import 'package:real_state/widgets/rooms.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    PropertyProvider property = Provider.of<PropertyProvider>(context);
    RoomsProvider rooms = Provider.of<RoomsProvider>(context);
    double _lowerValue;
    double _upperValue;


    return Scaffold(
      backgroundColor: white,
      body: SafeArea(child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: CustomText(msg: "Find the best home for you!", size: 20, weight: FontWeight.w400,),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(msg: "Property type", size: 18,),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: CustomText(msg: "Select the type of space", size: 16, color: grey,),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Container(
              height: 260,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                        onTap: (){
                          property.changePropertyType(Property.HOUSE);
                        },
                        child: PropertyType(image: "ih2.png", title: "House",)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                        onTap: (){
                          property.changePropertyType(Property.FLAT);
                        },
                        child: PropertyType(image: "flat.png", title: "Flat",)),
                  ),

                ],
              )),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(msg: "Rooms", size: 18,),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: CustomText(msg: "Select the number of rooms", size: 16, color: grey,),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: GestureDetector(
                      onTap: (){
                        rooms.changeNumberOfRooms(NumberOfRooms.ONE);
                      },
                      child: Rooms(1)),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: GestureDetector(
                      onTap: (){
                        rooms.changeNumberOfRooms(NumberOfRooms.TWO);
                      },
                      child: Rooms(2)),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: GestureDetector(
                      onTap: (){
                        rooms.changeNumberOfRooms(NumberOfRooms.THREE);
                      },
                      child: Rooms(3)),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: GestureDetector(
                      onTap: (){
                        rooms.changeNumberOfRooms(NumberOfRooms.FOUR);
                      },
                      child: Rooms(4)),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: GestureDetector(
                      onTap: (){
                        rooms.changeNumberOfRooms(NumberOfRooms.FIVE);
                      },
                      child: Rooms(5)),
                ),


              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(msg: "Price Range", size: 18,),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: CustomText(msg: "Drag the slider to select a price range (in thousands)", size: 16, color: grey,),
              ),
            ],
          ),

          FlutterSlider(
            touchSize: 30,
            handlerWidth: 30,
            values: [30, 100],
            rangeSlider: true,
            max: 500,
            min: 0,
            onDragging: (handlerIndex, lowerValue, upperValue) {
            },
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              width: MediaQuery.of(context).size.width - 25,
              decoration: BoxDecoration(
                color: black,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 14, bottom: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CustomText(msg: "Search Properties", color: white, size: 22, weight: FontWeight.w600),
                  ],
                ),
              ),
            ),
          )

        ],
      )),
    );
  }
}
