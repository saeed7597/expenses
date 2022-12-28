import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'item_work.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)
          )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24,),
            Text(
              localization!.titleBalance,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(fontWeight: FontWeight.w400),),
            const SizedBox(height: 10,),
            Text(
              "\$12,831",
              style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 28
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ItemWork(icon: 'assets/svg/receipt-item.svg', name: 'Pay'),
                ItemWork(icon: 'assets/svg/money-send.svg', name: 'Transfer'),
                ItemWork(icon: 'assets/svg/money-recive.svg', name: 'Receive'),
                ItemWork(icon: 'assets/svg/math.svg', name: 'Split')
              ],
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
