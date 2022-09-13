import 'package:flutter/material.dart';
import 'package:rarguile/src/shared/design_system/atoms/ds_text.dart';
import 'package:rarguile/src/shared/constants/app_colors.dart';

import 'package:rarguile/src/shared/constants/styles.dart';

class DsRelated extends StatefulWidget {
  const DsRelated({super.key});

  @override
  State<DsRelated> createState() => _DsRelatedState();
}

class _DsRelatedState extends State<DsRelated> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Divider(color: strokeDisable),
          DsText(
            text: 'Relacionados',
            style: subTitleBoldPrimary,
          ),
          // TODO
          // FutureBuilder<List<VideosModel>>(
          //   future: controller.getData(),
          //   builder: (context, snapshot) {
          //     if (snapshot.hasData) {
          //       return ListView.builder(
          //         itemCount: snapshot.data!.length,
          //         itemBuilder: (context, index) {
          //           return Card(
          //             name: snapshot.data![index].name!,
          //           );
          //         },
          //       );
          //     }
          //     return const CircularProgressIndicator();
          //   },
          // ),
        ],
      ),
    );
  }
}
