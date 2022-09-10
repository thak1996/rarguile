import 'package:flutter/material.dart';

import 'package:rarguile/src/design_system/atoms/ds_text.dart';
import 'package:rarguile/src/design_system/organisms/ds_card.dart';

import 'package:rarguile/src/shared/styles.dart';

class DsRelated extends StatefulWidget {
  const DsRelated({
    super.key,
  });

  @override
  State<DsRelated> createState() => _DsRelatedState();
}

class _DsRelatedState extends State<DsRelated> {
  //TODO
  // late Controller controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Divider(),
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
