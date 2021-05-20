import 'package:flutter/material.dart';
import 'package:popup_page/model/users.dart';
import 'package:popup_page/widget/choose.dart';
import 'package:popup_page/widget/style.dart';
import 'package:popup_page/widget/tenant.dart';
import 'package:popup_page/widget/unit.dart';

class CustomDiolog extends StatefulWidget {
  @override
  _CustomDiologState createState() => _CustomDiologState();
}

class _CustomDiologState extends State<CustomDiolog> {
  bool close = true;
  Users selectedUser;

  void select(user) {
    close = true;
    setState(() {
      selectedUser = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AlertDialog(
        backgroundColor: Color.fromRGBO(38, 43, 63, 1),
        elevation: 30,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Invite Tenant",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 18,
                color: Color.fromRGBO(244, 182, 63, 1),
              ),
              textAlign: TextAlign.left,
            ),
            IconButton(
                icon: Icon(
                  Icons.close,
                  size: 35,
                  color: Color.fromRGBO(244, 182, 63, 1),
                ),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
        actions: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TenantEmail(
                selectUser: select,
              ),
              SizedBox(
                height: 10,
              ),
              if (selectedUser != null) singleUser(),
              ChooseProperty(),
              SizedBox(
                height: 10,
              ),
              ChooseUnit(),
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  Widget singleUser() {
    return close
        ? Container(
            padding: EdgeInsets.only(left: 15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: ListTile(
                trailing: Container(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        close = !close;
                      });
                    },
                    icon: Icon(
                      Icons.close,
                      color: Color.fromRGBO(117, 117, 117, 1),
                      size: 20,
                    ),
                  ),
                ),
                leading: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: ExactAssetImage(selectedUser.image),
                        fit: BoxFit.cover),
                  ),
                ),
                title: Text(
                  selectedUser.name,
                  style: simpleStyle14(),
                ),
                subtitle: Text(selectedUser.email, style: simpleStyle122()),
              ),
            ),
          )
        : Container();
  }
}
