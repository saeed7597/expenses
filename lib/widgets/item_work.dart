import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemWork extends StatelessWidget {
  const ItemWork({Key? key,required this.icon,required this.name}) : super(key: key);
  final String icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0xFFF0F3F9),
              borderRadius: BorderRadius.circular(10)
          ),
          child: SvgPicture.asset(
            icon,
            color: const Color(0xff0048B7),
            width: 40,
            height: 40,
          ),
        ),
        const SizedBox(height: 5,),
        Text(name),
      ],
    );
  }
}