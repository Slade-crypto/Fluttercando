import 'package:flutter/material.dart';

import '../components/text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //controllers da edição de texto
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 50),

              //Seja bem vindo de volta, sentimos sua falta
              Text(
                "Seja bem vindo de volta, sentimos sua falta",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),

              //campo usuario
              MyTextField(
                controller: usernameController,
                hintText: 'Usuario',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              //campo senha
              MyTextField(
                controller: passwordController,
                hintText: 'Senha',
                obscureText: true,
              ),

              //esqueceu sua senha?

              //botar logar

              //Ou continue com:

              //google/apple buttons

              //não é um membro? registre-se agora
            ],
          ),
        ),
      ),
    );
  }
}
