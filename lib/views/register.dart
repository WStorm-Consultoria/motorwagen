import 'package:GoldenGate/widgets/copyright-bar.dart';
import 'package:GoldenGate/widgets/progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../widgets/input-text.dart';
import '../widgets/circular-button.dart';

class RegisterPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _nameController = useTextEditingController();
    final _cpfController = useTextEditingController();
    final _phoneController = useTextEditingController();
    final _emailController = useTextEditingController();
    final _passwordController = useTextEditingController();

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
                        InputText(
                          label: 'Login',
                          controller: _nameController,
                        ),
                        InputText(
                          label: 'E-mail',
                          controller: _emailController,
                        ),
                        InputText(
                          label: 'CPF',
                          controller: _cpfController,
                        ),
                        InputText(
                          label: 'Telefone Celular',
                          controller: _phoneController,
                        ),
                        InputText(
                          label: 'Senha',
                          controller: _passwordController,
                          secure: true,
                        ),
                        CircularButton(
                          title: 'Criar Conta',
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
