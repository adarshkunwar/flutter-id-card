import 'package:flutter/material.dart';

class Id extends StatelessWidget {
  const Id({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: deviceHeight * 0.75,
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.orange,
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 600,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(300),
                          bottomRight: Radius.circular(300))),
                  height: deviceHeight * 0.35,
                  child: Column(children: [
                    SizedBox(
                      height: deviceHeight * 0.30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: deviceWidth * 0.35,
                            height: deviceWidth * 0.35,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(99)),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/user.png'),
                                    fit: BoxFit.cover),
                                color: Colors.orange),
                          ),
                          const Text(
                            "Adarsh Kunwar",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    Container()
                  ]),
                ),
                Container(
                  width: 600,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(300),
                          topRight: Radius.circular(300))),
                  height: deviceHeight * 0.35,
                ),
              ],
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("flip"))
        ],
      ),
    );
  }
}
