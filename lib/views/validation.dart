import 'package:GoldenGate/widgets/copyright-bar.dart';
import 'package:GoldenGate/widgets/progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../widgets/input-text.dart';
import '../widgets/circular-button.dart';

class ValidationPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _loading = useState(false);

    return Stack(
      children: [
        Scaffold(
          body: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [],
                    ),
                  ),
                ),
              ),
              CopyrightBar(),
            ],
          ),
        ),
        if (_loading.value) ProgressView(),
      ],
    );
  }
}
