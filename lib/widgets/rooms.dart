import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_state/providers/rooms.dart';
import 'package:real_state/services/style.dart';

import 'custom_text.dart';

class Rooms extends StatelessWidget {
  final int number;


  Rooms(this.number);

  @override
  Widget build(BuildContext context) {
    RoomsProvider rooms = Provider.of<RoomsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          color: rooms.numberOfRooms == NumberOfRooms.ONE && number == 1 || rooms.numberOfRooms == NumberOfRooms.TWO && number == 2 || rooms.numberOfRooms == NumberOfRooms.THREE && number == 3 || rooms.numberOfRooms == NumberOfRooms.FOUR && number == 4 || rooms.numberOfRooms == NumberOfRooms.FIVE && number == 5  ? black : grey[200],
          borderRadius: BorderRadius.circular(8)
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
        child: CustomText(msg: number.toString(), color: rooms.numberOfRooms == NumberOfRooms.ONE && number == 1 || rooms.numberOfRooms == NumberOfRooms.TWO && number == 2 || rooms.numberOfRooms == NumberOfRooms.THREE && number == 3 || rooms.numberOfRooms == NumberOfRooms.FOUR && number == 4 || rooms.numberOfRooms == NumberOfRooms.FIVE && number == 5  ? white : black, size: 24, weight: FontWeight.w400,),
      ),
    );
  }
}
