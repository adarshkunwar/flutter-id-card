import 'package:flutter/material.dart';

class Id extends StatefulWidget {
  const Id({super.key});

  @override
  State<Id> createState() => _IdState();
}

class _IdState extends State<Id> {
  bool flipped = true;
  Map<String, dynamic> users = {"userImage": "assets/images/user.png"};
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          (flipped == true)
              ? Container(
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
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(99)),
                                      color: Colors.orange),
                                  child: Container(
                                    // width: deviceWidth,
                                    // height: deviceWidth,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(99)),
                                      image: DecorationImage(
                                          image: AssetImage(users['userImage']),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Adarsh Kunwar",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                  textAlign: TextAlign.center,
                                ),
                                const Text(
                                  "A DEVELOPER",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("ID NO: 00000000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                Text("DOB : 7th Sep, 2002",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                Text("Blood Group: B+",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                Text("Email: Email@gmail.com",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                Text("ID NO: 00000000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                // width: 220,
                                // height: 100,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/images/bar.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Container(
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
                        height: deviceHeight * 0.30,
                        child: Column(children: [
                          SizedBox(
                            height: deviceHeight * 0.30,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Company Name",
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "Adarsh Kunwar",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      Center(
                        child: Container(
                          width: 600,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(300),
                                  topRight: Radius.circular(300))),
                          height: deviceHeight * 0.40,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text("data"),
                                  Text("data"),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("lorem ipsum"),
                                  Text("lotem ipsum"),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                      "lorem ipsum dolor ismut plorem ipsum dolor "),
                                  Text(
                                      "lorem ipsum dolor ismut plorem ipsum dolor "),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
          // ElevatedButton(onPressed: () {}, child: const Text("flip"))

          ElevatedButton(
              onPressed: () {
                print("print");
                setState(() {
                  flipped = !flipped;
                  // if (flipped == true)
                  //   flipped == false;
                  // else
                  //   flipped == true;
                  print(flipped);
                });
              },
              child: const Text("flip"))
        ],
      ),
    );
  }
}
