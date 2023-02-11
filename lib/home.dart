import 'package:flutter/material.dart';

import 'setting.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff1A2A48),
      body: Stack(children: [
        Center(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Text(
                  "${count}",
                  style: TextStyle(color: Colors.white, fontSize: 100),
                )),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: size.height * 0.08, left: size.width * 0.85),
          child: IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => setting()));
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: size.height * 0.8,
              left: size.width * 0.1,
              right: size.width * 0.1),
          child: Center(
            child: Row(
              children: [
                SizedBox(
                  height: size.height * 0.05,
                  width: size.height * 0.12,
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          count = 0;
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
                                  BorderRadius.all(Radius.circular(20))))),
                ),
                Spacer(),
                SizedBox(
                  height: size.height * 0.05,
                  width: size.height * 0.12,
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (count == 0)
                            count = 0;
                          else
                            count--;
                        });
                      },
                      child: Icon(Icons.remove,
                          size: 40, color: Color(0xff1A2A48)),
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))))),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
