import 'package:delybox/components/header_text_view.dart';
import 'package:delybox/constants.dart';
import 'package:flutter/material.dart';

class SendOrderView extends StatelessWidget {
  const SendOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(defaultPadding),
        constraints: BoxConstraints(maxWidth: 860),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeaderTextView(text: 'Dispatch Order'),
            SizedBox(
              height: defaultPadding * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Order Number',
                        hintText: 'Order Number'),
                  ),
                ),
                SizedBox(
                  width: defaultSpace,
                ),
                Flexible(
                  flex: 1,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Data',
                        hintText: 'dd/MM/yyyy'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: defaultSpace * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
