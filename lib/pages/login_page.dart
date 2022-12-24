import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttercando/components/my_button.dart';
import 'package:fluttercando/components/square_tille.dart';

import '../components/text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //controllers da edição de texto
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //Logar usuario
  void logarUsuario() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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

              const SizedBox(height: 10),

              //esqueceu sua senha?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Esqueceu sua senha?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //botar logar
              MyButton(onTap: logarUsuario),

              const SizedBox(height: 50),

              //Ou continue com:
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "Ou continue com:",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              //google/apple buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  //Google
                  SquareTile(imagePath: 'lib/images/google.png'),

                  SizedBox(width: 25),

                  //apple
                  SquareTile(imagePath: 'lib/images/apple.png'),
                ],
              ),

              const SizedBox(height: 50),

              //não é um membro? registre-se agora
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Não é um membro?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Registre-se agora',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
