import 'dart:ffi';

import 'package:delybox/components/header_text_view.dart';
import 'package:delybox/constants.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class SendOrderView extends StatefulWidget {
  const SendOrderView({Key? key}) : super(key: key);

  @override
  State<SendOrderView> createState() => _SendOrderViewState();
}

class _SendOrderViewState extends State<SendOrderView> {
  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Test 1',
      'Test 2',
      'Test 3',
      'Test 4',
    ];
    String? selectedValue;

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
              children: [
                Flexible(
                  flex: 1,
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Delivery Location',
                    ),
                    hint: Text(
                      'Select delivery location',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: defaultSpace * 2,
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Cooperative',
                    ),
                    hint: Text(
                      'Select Cooperative',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: defaultSpace * 2,
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Deliveryman',
                    ),
                    hint: Text(
                      'Select Deliveryman',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: defaultSpace * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Platform',
                    ),
                    hint: Text(
                      'Select Platform',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: defaultSpace,
                ),
                Flexible(
                  flex: 1,
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Payment',
                    ),
                    hint: Text(
                      'Select Payment',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: defaultPadding * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    width: double.maxFinite,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: primaryBgColor,
                        backgroundColor: Colors.white,
                          side: const BorderSide(
                              width: 1, // the thickness
                              color: primaryBgColor
                               // the color of the border
                              )),
                      onPressed: () {
                        print('clicked on reset form button');
                      },
                      child: const Text(
                        'Reset Form',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: defaultSpace,
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    width: double.maxFinite,
                    height: 45,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(primaryBgColor)),
                      onPressed: () {
                        print('clicked on dispatch order button');
                      },
                      child: const Text(
                        'Dispatch Order',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
