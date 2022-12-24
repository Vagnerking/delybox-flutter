import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BootstrapContainer(
      children: [
        BootstrapRow(
          children: [
            BootstrapCol(
              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
              child: Text('Column 1'),
            ),
            BootstrapCol(
              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
              child: Text('Column 2'),
            ),
          ],
        ),
        BootstrapRow(
          children: [
            BootstrapCol(
              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
              child: Text('Column 3'),
            ),
          ],
        ),
      ],
    );
  }
}
