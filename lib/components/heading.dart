import 'package:flutter/material.dart';
import 'package:travel_app/utils/styles.dart';
import 'package:velocity_x/velocity_x.dart';

//  class HeadingSection extends StatelessWidget {
//   const HeadingSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Row(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 color: text,
//                 borderRadius: BorderRadius.circular(100),
//                 image: DecorationImage(image: AssetImage(profile)),
//               ),
//               height: 50,
//               width: 50,
//             ),
//             small.widthBox,
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 'Welcome'.text.textStyle(p1).make().centered(),
//                 'John Doe'.text.textStyle(heading1).make().centered(),
//               ],
//             ),
//           ],
//         ),
//       Icon(Icons.notifications_active,color: icon,size: 28,),
//       ],
//     );
//   }
// }

// LIST TILE CAN ALSO BE USED 

class HeadingSection extends StatelessWidget {
  const HeadingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  Container(
          decoration: BoxDecoration(
            color: text,
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(image: AssetImage(profile)),
          ),
          height: 50,
          width: 50,
        ),
        title: 'Welcome'.text.textStyle(p1).make().centered(),
        subtitle: 'Vikash Chauhan'.text.textStyle(heading1).make().centered(),
        trailing: Icon(Icons.notifications_active_rounded,color: Vx.red500,),
      );
  }
}