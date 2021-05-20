import 'package:flutter/material.dart';
import 'package:popup_page/widget/all_widgets.dart';
import 'package:popup_page/widget/style.dart';

class ChooseUnit extends StatefulWidget {
  @override
  _ChooseUnitState createState() => _ChooseUnitState();
}

class _ChooseUnitState extends State<ChooseUnit> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Choose Unit",
            style: simpleStyle12(),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            textButtom("APT21"),
            textButtom("APT22"),
            textButtom("APT23"),
            textButtom("APT24"),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () {},
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color.fromRGBO(244, 182, 63, 1)),
            child: Text(
              'Send',
              style: TextStyle(
                  fontFamily: "Roboto", fontSize: 20, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
