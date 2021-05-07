import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../widgets/copyright-bar.dart';
import '../widgets/progress.dart';
import '../widgets/input-text.dart';
import '../widgets/circular-button.dart';

import 'register.dart';
import 'home.dart';
import 'forgot.dart';

class LoginPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _loginController = useTextEditingController();
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
                          controller: _loginController,
                        ),
                        InputText(
                          label: 'Senha',
                          controller: _passwordController,
                          secure: true,
                        ),
                        CircularButton(
                          title: 'ENTRAR',
                          color: Color(0xFF51A98C),
                          onPress: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomePage();
                            }));
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CircularButton(
                          title: 'Cria Conta',
                          color: Color(0xFFF39E7D),
                          onPress: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return RegisterPage();
                            }));
                          },
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ForgotPage();
                              }));
                            },
                            child: Text(
                              'Esqueci a minha senha',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
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
