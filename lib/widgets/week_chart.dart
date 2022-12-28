import 'package:flutter/material.dart';

class WeekChart extends StatelessWidget {
  final double value;
  final String name;
  final Function() onTap;
  final bool status;
  const WeekChart({
    Key? key,required this.value,required this.name,required this.onTap,required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            status == true ? Text("\$$value") : const SizedBox(),
            const SizedBox(height: 7,),
            Container(
              width: 40,
              height: value,
              decoration: BoxDecoration(
                  color: status == true ? Color(0xff89AADF) : Color(0xffB3C2DC),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              name,
              style: const TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
