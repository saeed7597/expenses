import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/header_home.dart';
import '../widgets/week_chart.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  WeekSelected weekSelected = WeekSelected.mon;

  updateWeekChart(WeekSelected week) {
    setState(() {
      weekSelected = week;
    });
  }
  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text(
              localization!.titleAppBarHomeScreen,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 18),
            ),
            actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.brightness_3,color: Colors.grey,))],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderScreen(),
                const SizedBox(
                  height: 28,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Text(
                    "Recent transactions",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          ListTile(
                            leading: Container(
                              height: 40,
                              width: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF0F3F9),
                                  borderRadius: BorderRadius.circular(10)),
                              child: SvgPicture.asset(
                                'assets/svg/send.svg',
                                color: const Color(0xff0048B7),
                                width: 20,
                                height: 20,
                              ),
                            ),
                            title: Text(
                              "Uber",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text("Transportation"),
                            trailing: Text(
                              "-\$24.30",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                          ),
                          ListTile(
                            leading: Container(
                              height: 40,
                              width: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF0F3F9),
                                  borderRadius: BorderRadius.circular(10)),
                              child: SvgPicture.asset(
                                'assets/svg/send.svg',
                                color: const Color(0xff0048B7),
                                width: 20,
                                height: 20,
                              ),
                            ),
                            title: Text(
                              "Uber",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text("Transportation"),
                            trailing: Text(
                              "-\$24.30",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                          ),
                          ListTile(
                            leading: Container(
                              height: 40,
                              width: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF0F3F9),
                                  borderRadius: BorderRadius.circular(10)),
                              child: SvgPicture.asset(
                                'assets/svg/send.svg',
                                color: const Color(0xff0048B7),
                                width: 20,
                                height: 20,
                              ),
                            ),
                            title: Text(
                              "Uber",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text("Transportation"),
                            trailing: Text(
                              "-\$24.30",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                          ),
                          ListTile(
                            leading: Container(
                              height: 40,
                              width: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF0F3F9),
                                  borderRadius: BorderRadius.circular(10)),
                              child: SvgPicture.asset(
                                'assets/svg/send.svg',
                                color: const Color(0xff0048B7),
                                width: 20,
                                height: 20,
                              ),
                            ),
                            title: Text(
                              "Uber",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text("Transportation"),
                            trailing: Text(
                              "-\$24.30",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Spending report",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      Text("View",
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff0048B7))),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                                title: Text("\$212.80"),
                                subtitle: Text("Oct 17-Oct 23"),
                                trailing: SizedBox(
                                  width: 60,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFF0F3F9),
                                            borderRadius: BorderRadius.circular(2)),
                                        child: const Center(
                                          child: Text("W",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFF81A6DF),
                                              )),
                                        ),
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(2)),
                                        child: const Center(
                                          child: Text(
                                            "M",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            ),
                            const SizedBox(height: 5,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  WeekChart(
                                    value: 70,
                                    name: 'Mon',
                                    onTap: (){
                                      updateWeekChart(WeekSelected.mon);
                                    },
                                    status: weekSelected == WeekSelected.mon,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  WeekChart(
                                    value: 99,
                                    name: 'Tue',
                                    onTap: (){
                                      updateWeekChart(WeekSelected.tue);
                                    },
                                    status: weekSelected == WeekSelected.tue,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  WeekChart(
                                    value: 87,
                                    name: 'Wed',
                                    onTap: (){
                                      updateWeekChart(WeekSelected.wed);
                                    },
                                    status: weekSelected == WeekSelected.wed,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  WeekChart(
                                    value: 69,
                                    name: 'Thu',
                                    onTap: (){
                                      updateWeekChart(WeekSelected.thu);
                                    },
                                    status: weekSelected == WeekSelected.thu,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  WeekChart(
                                    value: 99,
                                    name: 'Fri',
                                    onTap: (){
                                      updateWeekChart(WeekSelected.fri);
                                    },
                                    status: weekSelected == WeekSelected.fri,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  WeekChart(
                                    value: 67,
                                    name: 'Sat',
                                    onTap: (){
                                      updateWeekChart(WeekSelected.sat);
                                    },
                                    status: weekSelected == WeekSelected.sat,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  WeekChart(
                                    value: 74,
                                    name: 'Sun',
                                    onTap: (){
                                      updateWeekChart(WeekSelected.sun);
                                    },
                                    status: weekSelected == WeekSelected.sun,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15,),
                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ));
  }
}
