// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:delybox/constants.dart';
import 'package:delybox/providers/auth_provider.dart';
import 'package:delybox/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/login_logo_column.dart';
import 'components/login_top_description.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              children: [
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: primaryBgColor,
                      height: double.infinity,
                      child: LoginLogoColumn(),
                    ),
                  ),
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Formulario(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Formulario extends StatefulWidget {
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
    return Consumer<AuthProvider>(builder: (context, authProvider, child) {
      return Column(
        mainAxisSize: MainAxisSize.max,
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
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                      hintText: 'Enter your username'),
                ),
                SizedBox(
                  height: defaultSpace * 2,
                ),
                TextField(
                  obscureText: !passwordVisible,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      suffixIcon: IconButton(
                        icon: Icon(passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility),
                        color: Theme.of(context).primaryColorDark,
                        onPressed: () {
                          setState(() => togglePasswordVisibility());
                        },
                      )),
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 36,
                          height: 12,
                          child: Switch(
                              value: rememberLogin,
                              onChanged: (bool value) =>
                                  {setState(() => toggleRememberLogin())}),
                        ),
                        SizedBox(width: defaultSpace),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            child: Text(
                              'Remember-me',
                              style: TextStyle(fontSize: 14),
                            ),
                            onTap: () {
                              setState(() => toggleRememberLogin());
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: defaultPadding * 2,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 45,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(primaryBgColor)),
                          onPressed: () {
                            print('clicked on button login');
                            authProvider.loginStatus = LoginStatus.companies;
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
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        child: Text(
                          'Forget my username or password',
                          style: TextStyle(
                              fontSize: 14,
                              color: primaryBgColor,
                              decoration: TextDecoration.underline),
                        ),
                        onTap: () {
                          print('clicked on forget my username or password');
                        },
                      ),
                    ),
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have a account?",
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          width: defaultSpace,
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            child: Text(
                              'Click Here!',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: linkColorPrimary,
                                  decoration: TextDecoration.underline),
                            ),
                            onTap: () {
                              print('clicked on dont have account');
                            },
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      );
    });
  }
}
