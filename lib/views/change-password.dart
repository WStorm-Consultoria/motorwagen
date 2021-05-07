import 'package:GoldenGate/widgets/copyright-bar.dart';
import 'package:GoldenGate/widgets/progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../widgets/input-text.dart';
import '../widgets/circular-button.dart';

class ChangePasswordPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _passwordController = useTextEditingController();
    final _confirmationController = useTextEditingController();

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
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Digite a nova senha para alterá-la',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        InputText(
                          label: 'Senha',
                          controller: _passwordController,
                          secure: true,
                        ),
                        InputText(
                          label: 'Confirmação',
                          controller: _confirmationController,
                          secure: true,
                        ),
                        CircularButton(
                          title: 'Alterar senha',
                          color: Color(0xFF51A98C),
                          onPress: () {},
                        ),
                      ],
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
