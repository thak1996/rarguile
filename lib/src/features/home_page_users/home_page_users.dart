import 'package:flutter/material.dart';
import 'package:rarguile/src/design_system/atoms/ds_midiaquery.dart';
import 'package:rarguile/src/design_system/atoms/ds_text.dart';
import 'package:rarguile/src/design_system/molecules/ds_app_bar.dart';
import 'package:rarguile/src/design_system/organisms/ds_card.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';

class HomePageUsers extends StatefulWidget {
  const HomePageUsers({super.key});

  @override
  State<HomePageUsers> createState() => _HomePageUsersState();
}

class _HomePageUsersState extends State<HomePageUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DsAppBar(title: 'Raro Tube - Home'),
      body: ListView(
        children: [
          Container(
            height: screenSize(context).height,
            width: screenSize(context).width,
            decoration: const BoxDecoration(color: whiteColor),
            child: Padding(
              padding: EdgeInsets.only(
                right: screenSize(context).width * .02,
                left: screenSize(context).width * .02,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenSize(context).width * 0.05),
                  Padding(
                    padding:
                        EdgeInsets.only(left: screenSize(context).width * 0.02),
                    child: DsText(
                      text: 'Test',
                      style: h6Primary.copyWith(fontWeight: FontWeight.w400),
                    ),
                  ),
                  DsCard(
                    title: 'Text',
                    date: '26/04/1996',
                    text: 'lorem',
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
