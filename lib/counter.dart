import 'package:flutter/material.dart';

class counterss extends StatefulWidget {
  const counterss({Key? key}) : super(key: key);

  @override
  State<counterss> createState() => _counterssState();
}

class _counterssState extends State<counterss> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(2)
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                    child:      RaisedButton(
                      color: Colors.green,
                      child: Text("-",
                        style: TextStyle(fontSize:20,color: Colors.black),),
                      onPressed : () {
                        if(
                        number == 0
                        ){
                          return null;
                        }
                        setState(() {
                          number = number - 1;
                        });
                      },
                      // padding: EdgeInsets.only(right: 3),

                    ),
                  ),
                  Container(
                    width: 35,
                    height: 30,
                    color: Colors.white,
                    child:   Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: GestureDetector(
                        child:  Center(
                          child: Text(number.toString(),
                              style: TextStyle(
                                fontSize: 15,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:5),
                    child: SizedBox(
                      width: 30,
                      child:      RaisedButton(
                        color: Colors.green,
                        child: Text("+",
                          style: TextStyle(fontSize: 20,color: Colors.black),),
                        onPressed : () {
                          setState(() {
                            number = number + 1;
                          });
                        },

                        padding: EdgeInsets.only(right: 5),

                      ),
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
