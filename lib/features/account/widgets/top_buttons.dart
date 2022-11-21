import 'package:luveen/features/account/services/account_services.dart';
import 'package:luveen/features/account/widgets/Profile.dart';
import 'package:luveen/features/account/widgets/account_button.dart';
import 'package:flutter/material.dart';
import 'package:luveen/features/account/widgets/orders.dart';
import 'package:luveen/features/account/widgets/yourorders.dart';

class TopButtons extends StatelessWidget {
  const TopButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountButton(
              text: 'My Profile',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const profile()),
                );
              },
            ),
            AccountButton(
              text: 'Log Out',
              onTap: () => AccountServices().logOut(context),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
