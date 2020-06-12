import 'package:flutter/material.dart';
//import '../screens/PropertyDetails_screen.dart';
//import '../models/AllProperty_model.dart';

class StudentProfileWidget extends StatelessWidget {
  final String enrollmentno;
  final String studentname;
  final String studentimg;
  final String othrdetail;

  StudentProfileWidget(
      {@required this.enrollmentno,
      @required this.studentname,
      @required this.studentimg,
      // @required this.tags = "#",
      @required this.othrdetail});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        //  onTap: () => selectProperty(context),
        child: Container(
          margin: EdgeInsets.fromLTRB(15, 30, 15, 10),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              border: Border.all(
                
                color: Colors.white
                ,
                width: 5,
                
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(11),
              ),
              child: Image.network(
                studentimg,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text(
                    studentname,
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromRGBO(46, 96, 102, 1),
                        fontWeight: FontWeight.bold),
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Text(
                    "#${enrollmentno}",
                    style: TextStyle(
                      //fontSize: 25,
                      color: Color.fromRGBO(128, 139, 151, 1),
                      //fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Text(
                    othrdetail,
                    style: TextStyle(
                      //fontSize: 25,
                      color: Color.fromRGBO(128, 139, 151, 1),
                      //fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                //Text("ved"),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}