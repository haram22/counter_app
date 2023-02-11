import 'package:counter/home.dart';
import 'package:flutter/material.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  int num1 = 0;
  int num2 = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: Text(""),
          backgroundColor: Color(0xffBECBE3),
          elevation: 0,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homePage()));
                  },
                  icon: Icon(Icons.people)),
            ),
          ]),
      backgroundColor: Color(0xffBECBE3),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("title 1"),
                    SizedBox(
                      width: size.width * 0.5,
                      height: size.height * 0.4,
                      child: OutlinedButton(
                        child: Text(
                          "${num1}",
                          style: TextStyle(color: Colors.black, fontSize: 40),
                        ),
                        onPressed: () {
                          setState(() {
                            num1++;
                          });
                        },
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          // height: size.height * 0.05,
                          // width: size.height * 0.12,
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                num1 = 0;
                              });
                            },
                            child: Text(
                              "Reset",
                              style: TextStyle(
                                  color: Color(0xff1A2A48),
                                  fontSize: size.width * 0.05),
                            ),
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                          ),
                        ),
                        // Spacer(),
                        SizedBox(
                          // height: size.height * 0.05,
                          // width: size.height * 0.12,
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                if (num1 == 0)
                                  num1 = 0;
                                else
                                  num1--;
                              });
                            },
                            child: Icon(Icons.remove,
                                size: 40, color: Color(0xff1A2A48)),
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("title 1"),
                    SizedBox(
                      width: size.width * 0.5,
                      height: size.height * 0.4,
                      child: OutlinedButton(
                        child: Text(
                          "${num2}",
                          style: TextStyle(color: Colors.black, fontSize: 40),
                        ),
                        onPressed: () {
                          setState(() {
                            num2++;
                          });
                        },
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          // height: size.height * 0.05,
                          // width: size.height * 0.12,
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                num2 = 0;
                              });
                            },
                            child: Text(
                              "Reset",
                              style: TextStyle(
                                  color: Color(0xff1A2A48),
                                  fontSize: size.width * 0.05),
                            ),
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                          ),
                        ),
                        // Spacer(),
                        SizedBox(
                          // height: size.height * 0.05,
                          // width: size.height * 0.12,
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                if (num2 == 0)
                                  num2 = 0;
                                else
                                  num2--;
                              });
                            },
                            child: Icon(Icons.remove,
                                size: 40, color: Color(0xff1A2A48)),
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ]),
    );
  }
}
