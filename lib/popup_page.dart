import 'package:flutter/material.dart';
import 'package:popup_page/dialog.dart';

class PopupList extends StatefulWidget {
  @override
  _PopupListState createState() => _PopupListState();
}

class _PopupListState extends State<PopupList> {
  void showalertdialog(BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: (_) {
          return CustomDiolog();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _buttom(),
    );
  }

  Widget _buttom() {
    return FloatingActionButton(
      backgroundColor: Color.fromRGBO(244, 182, 63, 1),
      onPressed: () {
        showalertdialog(context);
      },
      child: Icon(
        Icons.add,
        size: 45,
        color: Colors.white,
      ),
    );
  }
}
