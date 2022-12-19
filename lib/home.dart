import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
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
          padding: EdgeInsets.only(top: 700.0, left: 30, right: 30),
          child: Center(
            child: Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 100,
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        count = 0;
                      });
                    },
                    child: Text(
                      "Reset",
                      style: TextStyle(color: Color(0xff1A2A48), fontSize: 17),
                    ),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: 100,
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        if (count == 0)
                          count = 0;
                        else
                          count--;
                      });
                    },
                    child: Text(
                      "-",
                      style: TextStyle(color: Color(0xff1A2A48), fontSize: 30),
                    ),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
