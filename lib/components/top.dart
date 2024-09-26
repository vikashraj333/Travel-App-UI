import 'package:flutter/material.dart';
import 'package:travel_app/components/card_top.dart';
import 'package:travel_app/models/destination.dart';
import 'package:travel_app/utils/styles.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [
      Destination(square3, 'Telaga', '120', 'Bandung'),
      Destination(square4, 'Sungai', '100', 'Ciliwung'),
      Destination(square1, 'Osaka', '80', 'Japan'),
    ];
    return SizedBox(
      height: 75,
      child: ListView.builder(
        itemCount: destinations.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          var dest = destinations[index];
          return CardTop(
              name: dest.name, image: dest.image, location: dest.location);
        },
      ),
    );
  }
}
