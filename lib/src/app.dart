import 'package:flutter/material.dart';
import 'package:rarguile/src/design_system/molecules/ds_app_bar.dart';

import 'package:rarguile/widgets/hide_show_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: const DsAppBar(title: 'Teste'),
          body: SingleChildScrollView(
            child: Column(
              children: const [
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                HideShow(),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
                Text('Texto'),
              ],
            ),
          )),
    );
  }
}
