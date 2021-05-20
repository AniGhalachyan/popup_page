import 'package:flutter/material.dart';
import 'package:popup_page/widget/style.dart';

class ChooseProperty extends StatefulWidget {
  @override
  _ChoosePropertyState createState() => _ChoosePropertyState();
}

class _ChoosePropertyState extends State<ChooseProperty> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Choose Property",
            style: simpleStyle12(),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
            alignment: Alignment.topLeft,
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromRGBO(30, 34, 52, 1),
              borderRadius: BorderRadius.circular(100),
            ),
            child: TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                  hintText: "Chamberburn",
                  hintStyle: simpleStyle14(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_drop_down,
                        size: 35,
                        color: Color.fromRGBO(214, 214, 214, 1),
                      ))),
            ),
          ),
        ),
      ],
    );
  }
}
