import 'package:flutter/material.dart';
import 'package:flutter_application_web_1/ui/widget/card_menu.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  int colorBlackDark = 0xFF000000;
  int colorBlack=0xFF14130E;
  int colorDorado = 0xFFCFAC00;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Color(colorBlack),
        key: _scaffoldkey,
        body: Container(
          width: screenWidth,
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: screenWidth / 5,
                decoration: BoxDecoration(
                    color: Color(colorBlackDark),
                    border: Border(
                      right: BorderSide(color: Color(colorDorado),width: 0.5 )
                    ),
                ),

                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(30),
                        child: CircleAvatar(
                            radius: 35,
                            backgroundColor: Color(colorDorado),
                            child: CircleAvatar(
                              backgroundColor: Color(0xFFFCEFC6),
                              radius: 34,
                              child: Icon(
                                Icons.home_sharp,
                                color: Color(0xFF9E9E9E),
                                size: 40,
                              ),
                            )
                        ),
                      )
                    ),
                    /*Center(
                      child: Container(
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: Color(0xFFFCEFC6),
                            border: Border.all(color: Color(colorDorado),width: 1.1,style:BorderStyle.solid),
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.home_sharp,
                          color: Color(0xFF9E9E9E),
                          size: 50,
                        ),
                      ),
                    ),*/
                    CardMenu(
                        TextCard: 'DASHBOARD', IconCard: Icons.access_time),
                    CardMenu(TextCard: 'COMMUNITY', IconCard: Icons.person),
                    CardMenu(
                        TextCard: 'BOARD OF DIRECTORS',
                        IconCard: Icons.ad_units),
                  ],
                ),
              ),
              Container(
                width: (screenWidth)-(screenWidth / 5),
                color: Color(colorBlack),
                child: Scaffold(
                  backgroundColor: Color(colorBlack),
                  appBar: AppBar(
                    title: Text('DASHBOARD'),
                    backgroundColor: Color(colorBlack),
                    
                    actions: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.settings))
                    ],
                  ),
                  body: ListView(
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                  width: (screenWidth/5),
                                  height: (600),
                                  margin: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(colorBlackDark)
                                  ),
                                  child: Container()
                              ),
                              Container(
                                width: (screenWidth/5),
                                height: (600),
                                padding: EdgeInsets.all(4),
                                margin: EdgeInsets.all(20),
                                child: Scaffold(
                                  backgroundColor: Color(colorBlackDark),
                                  body: Container(
                                    child: ListView(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border(bottom: BorderSide(color: Color(colorDorado),width: 0.5 ))
                                          ),
                                          child: Container(
                                            padding: EdgeInsets.all(4),
                                            margin: EdgeInsets.all(4),
                                            child: Text('COMMUNITY FEED',style: TextStyle(color: Color(colorDorado),fontWeight: FontWeight.w500),),
                                          )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ),
              ),
            ],
          ),
        ));
  }
}
