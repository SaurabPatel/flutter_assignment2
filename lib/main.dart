import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileView(),
    );
  }
}

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20.0),
          icon: Image.asset("assets/images/back.png", width: 30, height: 30),
          onPressed: () {},
        ),

        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 20.0),
            icon: Image.asset("assets/images/repeat.png", width: 30, height: 30),
            onPressed: () {},
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
           profileInfo(),
           contectInfo(),
           orderInfo(),
            optionList(),
           signOut()
           // Expanded(child: )
          ],
        ),
      ),

    );
  }

  Widget profileInfo() {

    double profileImageWidth = 140;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [

          ////////////////////////////Profile Picture with name////////////////////////////////////////////
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[

              SizedBox(
                width: profileImageWidth,
                height: (profileImageWidth * 95) / 75,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: profileImageWidth * 0.5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50), // Image border
                      child: Image.asset("assets/images/avtar.jpg")),
                  )
                ),
              ),


              const Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text('EMMA', style: TextStyle(fontSize: 15)),
                ),
              )

            ],
          ),
          /////////////////////////////////////////////////////////////////////////////////////////////////

          ////////////////////////////Profile Picture with name////////////////////////////////////////////
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                children: [
                  ////////////////////Follow Button/////////////////////////////////
                  followButton(),
                  SizedBox(height: 20),
                  /////////////////////////////////////////////////////////////////
                  Row(
                    children: [
                     Expanded(
                       child: Column(
                         children: const [
                           Text("104",
                             style: TextStyle(
                               fontSize: 25.0,
                             ),
                           ),
                           SizedBox(height: 5),
                           Text("Design Posted",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12.0,

                                ),
                           )
                         ],
                       ),
                     ),

                      Expanded(
                        child: Column(
                          children: const [
                            Text("12",
                              style: TextStyle(
                                fontSize: 25.0,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("Board Created",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,

                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          /////////////////////////////////////////////////////////////////////////////////////////////////

          ////////////////////////////ContectInfo Picture with name////////////////////////////////////////////
        ],
      ),
    );
  }

  Widget followButton() {
    return   Card(
      elevation: 10,
      shadowColor: Colors.grey.withOpacity(0.3),
      color: Colors.transparent,
      child:  Container(
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(10),
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/plus.png", width: 10, height: 10),
                const SizedBox(height: 7),
                const Text("Follow")
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget contectInfo() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("assets/images/phonecall.png", width: 20, height: 20, color: Colors.grey),
                const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                        "(581)-567-23456",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                        ),
                    ),
                )
              ],
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                Image.asset("assets/images/email.png", width: 20, height: 20, color: Colors.grey),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "emma@gmail.com",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget orderInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // use whichever suits your need
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide( //                   <--- left side
                  color: Colors.grey,
                  width: 1.0,
                ),
                top: BorderSide( //                    <--- top side
                  color: Colors.grey,
                  width: 1.0,
                ),
                bottom:  BorderSide( //                    <--- top side
                  color: Colors.grey,
                  width: 1.0,
                )
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: const [
                  Text("\$2084", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  Text("Balance", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600))
                ],
              ),
            ),
          ),
        ),

        Expanded(
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide( //                   <--- left side
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    bottom: BorderSide( //                    <--- top side
                      color: Colors.grey,
                      width: 1.0,
                    )
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: const [
                    Text("14", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                    Text("Order", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600))
                  ],
                ),
              ),
            )
        )


      ],
    );
  }

  Widget optionList() {

     final testList = [
      Pair("Your Favourites", "assets/images/heart.png"),
      Pair("Payment", "assets/images/credit-card.png"),
      Pair("Referral Code", "assets/images/sharing.png"),
      Pair("Promotions", "assets/images/discount.png"),
      Pair("Settings", "assets/images/setting.png")
    ];

    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          itemExtent: 50,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context,int index){
            return ListTile(
              minLeadingWidth: 5,
                leading: Image.asset(testList[index].b, color: Colors.orange, width: 20, height: 20),
                title:Align(
                  alignment: Alignment(-0.98, 0),
                    child: Text("${testList[index].a}", style: TextStyle(fontWeight: FontWeight.bold)))
            );
          }
      ),
    );
  }
  
  Widget signOut() {
    return Container(
      decoration:  const BoxDecoration(
        border: Border(
            top: BorderSide( //                    <--- top side
              color: Colors.grey,
              width: 1.0,
            ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset("assets/images/logout.png", width: 25, height: 25, color: Colors.red,),
            Padding(
              padding: EdgeInsets.only(left: 20),
                child: Text("LOG OUT", style: TextStyle(fontWeight: FontWeight.bold),)
            )
          ],
        ),
      ),
    );
  }
  

}

class Pair<T1, T2> {
  final T1 a;
  final T2 b;

  Pair(this.a, this.b);
}