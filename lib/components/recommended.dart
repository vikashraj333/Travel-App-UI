import 'package:flutter/material.dart';
import 'package:travel_app/components/card_recommended.dart';
import 'package:travel_app/models/destination.dart';
import 'package:travel_app/utils/styles.dart';

class Recommended extends StatelessWidget {
  const Recommended({super.key});

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [
      Destination(square1, 'Japan Temple', '120', 'Osaka Street, Japan'),
      Destination(square2, 'Capura Mero', '100', 'Tokyo Street, Japan'),
      Destination(square3, 'Telaga', '80', 'Bandung, Japan'),
      Destination(square4, 'Sungai', '100', 'Ciliwung'),
    ];
    return SizedBox(
      height: 250,
      child: ListView.builder(
          itemCount: destinations.length,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            var dest = destinations[index];
            return CardRecommended(
                image: dest.image,
                name: dest.name,
                price: dest.price,
                location: dest.location);
          }),
    );
  }
}
