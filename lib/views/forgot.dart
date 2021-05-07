import 'package:GoldenGate/views/change-password.dart';
import 'package:GoldenGate/widgets/copyright-bar.dart';
import 'package:GoldenGate/widgets/progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../widgets/input-text.dart';
import '../widgets/circular-button.dart';

class ForgotPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _phoneController = useTextEditingController();
    final _codeController = useTextEditingController();

    final _loading = useState(false);
    final _sent = useState(false);

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
                        if (!_sent.value)
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'Por favor informe o telefone cadastrado',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                              InputText(
                                label: 'Número do telefone',
                                controller: _phoneController,
                              ),
                              CircularButton(
                                title: 'Enviar',
                                color: Color(0xFF51A98C),
                                onPress: () {
                                  _sent.value = true;
                                },
                              ),
                            ],
                          ),
                        if (_sent.value)
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'Informe o código recebido por sms',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                              InputText(
                                label: 'Código de verificação',
                                controller: _codeController,
                              ),
                              CircularButton(
                                title: 'Validar',
                                color: Color(0xFF51A98C),
                                onPress: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return ChangePasswordPage();
                                  }));
                                },
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                child: InkWell(
                                  onTap: () {},
                                  child: Text(
                                    'Enviar novamente',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
