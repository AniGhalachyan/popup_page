import 'package:flutter/material.dart';
import 'package:popup_page/model/users.dart';
import 'package:popup_page/widget/style.dart';

// ignore: must_be_immutable
class TenantEmail extends StatefulWidget {
  Function selectUser;

  TenantEmail({this.selectUser});
  @override
  _TenantEmailState createState() => _TenantEmailState();
}

class _TenantEmailState extends State<TenantEmail> {
  List<Users> user = [
    Users(
        name: "Poxos Poxosyan",
        email: "poxos@gamil.com",
        image: "assets/image/avatar1.png"),
    Users(
        name: "Petros Petrosyan",
        email: "petros@gamil.com",
        image: "assets/image/avatar2.jpg"),
    Users(
        name: "Valod Valodyan",
        email: "valod@gamil.com",
        image: "assets/image/avatar3.png"),
  ];
  List<Users> finded = [];

  bool isOpen = false;

  @override
  void initState() {
    finded = user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 30),
          alignment: Alignment.topLeft,
          child: Text(
            "Tenant Email",
            style: simpleStyle12(),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Stack(
            children: <Widget>[
              isOpen
                  ? AnimatedContainer(
                      duration: Duration(seconds: 1),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(18, 21, 32, 1),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: EdgeInsets.only(top: 20),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 30, bottom: 12, left: 10, right: 10),
                        child: Container(
                          width: 350,
                          height: 100,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: finded.length,
                              itemBuilder: (BuildContext ctx, int index) {
                                return Container(
                                  decoration: BoxDecoration(
                                      border: BorderDirectional(
                                          bottom: BorderSide(
                                              width: 1,
                                              color: Color.fromRGBO(
                                                  30, 34, 52, 1)))),
                                  child: isOpen
                                      ? ListTile(
                                          onTap: () {
                                            widget.selectUser(
                                              finded[index],
                                            );
                                            setState(() {
                                              isOpen = false;
                                            });
                                          },
                                          leading: Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              image: DecorationImage(
                                                  image: ExactAssetImage(
                                                      finded[index].image),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                          title: Text(
                                            finded[index].name,
                                            style: simpleStyle14(),
                                          ),
                                          subtitle: Text(finded[index].email,
                                              style: simpleStyle122()),
                                        )
                                      : Container(),
                                );
                              }),
                        ),
                      ),
                    )
                  : Container(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(30, 34, 52, 1),
                    borderRadius: BorderRadius.circular(100)),
                child: TextFormField(
                    onChanged: (v) {
                      if (v.isEmpty) {
                        finded = user;
                      }
                      setState(() {
                        finded = user
                            .where((element) =>
                                element.name.toLowerCase().startsWith(
                                      v.toLowerCase(),
                                    ))
                            .toList();
                      });
                    },
                    onTap: () {
                      setState(() {
                        isOpen = !isOpen;
                      });
                      print("is Open$isOpen");
                    },
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      hintText: "Enter Email",
                      hintStyle: simpleStyle144(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.grey,
                    ),
                    style: simpleStyle14()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
