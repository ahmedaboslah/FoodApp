import 'package:flutter/material.dart';
import 'package:foodapp/Features/Account/presentation/Views/Widgets/AccountProfileDetails.dart';
import 'package:foodapp/Features/Account/presentation/Views/Widgets/AccountusingDetals.dart';
import 'package:foodapp/Features/Registration/presentation/views/widgets/createaccountbuton.dart';

import 'Widgets/AccountSetting.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              children: [],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: AccountProfileDetails(),
            ),
            const AcountSetting(),
            const AccountUsage(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 130, vertical: 20),
              child: createaccountButton(
                color: const Color(0xffEB4646),
                text: 'Logout',
                txtcolor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
