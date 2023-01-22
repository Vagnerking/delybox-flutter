import 'package:delybox/components/card_white.dart';
import 'package:delybox/components/header_text_view.dart';
import 'package:delybox/constants.dart';
import 'package:delybox/views/body_container/body_container.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DispatchOrderView extends StatelessWidget {
  const DispatchOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BodyContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HeaderTextView(
            text: 'Dispatch Order',
            useDivider: true,
            useBottomPadding: true,
          ),
          CardWhite(
              widget: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextField(
                      maxLength: 9,
                      maxLines: 1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Order Number',
                          hintText: 'Enter the number'),
                    ),
                  ),
                  SizedBox(
                    width: defaultPadding / 2,
                  ),
                  Flexible(
                    flex: 1,
                    child: TextField(
                      maxLength: 9,
                      maxLines: 1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Order Number',
                          hintText: 'Enter the number'),
                    ),
                  ),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
