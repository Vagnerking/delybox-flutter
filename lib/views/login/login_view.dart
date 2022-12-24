// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:delybox/constants.dart';
import 'package:delybox/controller/auth_controller.dart';
import 'package:delybox/responsive.dart';
import 'package:flutter/material.dart';

import 'components/login_logo_column.dart';
import 'components/login_top_description.dart';

class LoginView extends StatelessWidget {
  LoginView() {
    AuthController.instance.loginScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      children: [
        if (!Responsive.isMobile(context)) LoginLogoColumn(),
        Formulario()
      ],
    ));
  }
}

class Formulario extends StatefulWidget {
  const Formulario({
    super.key,
  });

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  bool passwordVisible = false;
  bool rememberLogin = false;

  void togglePasswordVisibility() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  void toggleRememberLogin() {
    setState(() {
      rememberLogin = !rememberLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        alignment: Alignment.center,
        height: double.infinity,
        padding: EdgeInsets.all(defaultPadding),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginTopDescription(),
              SizedBox(
                height: defaultPadding * 2,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                constraints: BoxConstraints(minWidth: 280, maxWidth: 400),
                child: Column(
                  children: [
                    SizedBox(
                      height: Responsive.isMobile(context) ? 60 : 70,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Username',
                            hintText: 'Enter your username'),
                      ),
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    SizedBox(
                      height: Responsive.isMobile(context) ? 60 : 70,
                      child: TextField(
                        obscureText: !passwordVisible,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'Enter your password',
                            suffixIcon: IconButton(
                              icon: Icon(passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              color: Theme.of(context).primaryColorDark,
                              onPressed: () {
                                setState(() => togglePasswordVisibility());
                              },
                            )),
                      ),
                    ),
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 36,
                          child: Switch(
                              value: rememberLogin,
                              onChanged: (bool value) =>
                                  {setState(() => toggleRememberLogin())}),
                        ),
                        SizedBox(width: defaultPadding / 2),
                        Text('Remember-me'),
                      ],
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 45,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      primaryBgColor)),
                              onPressed: () {
                                print('clicked on button login');
                                Navigator.of(context).pushNamed('/companies');
                              },
                              child: const Text(
                                'LOGIN',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: defaultPadding * 2,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 16),
                          ),
                          onPressed: () {
                            print('Clicked on forget username or password');
                          },
                          child: const Text(
                            'Forget my username or password',
                            style: TextStyle(
                                color: primaryBgColor,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have a account?"),
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: TextStyle(fontSize: 16),
                              ),
                              onPressed: () {
                                print('Clicked on dont have account');
                              },
                              child: Text(
                                'Click Here!',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: linkColorPrimary,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}