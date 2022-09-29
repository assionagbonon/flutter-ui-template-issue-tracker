import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:template1/app_colors.dart';
import 'package:template1/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
          onPressed:  () {
            //La redirection sur la page d'accueil
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page3()),
            );
          },
          backgroundColor: MyColors.primaryLight.shade900,
          child: Image(
            image: AssetImage("assets/images/wrench.png"),
            color: Colors.white,
            width: 27,
          )),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(25),
        color: MyColors.primary.shade100,
        child: Column(

          children: [
            Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome back",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: MyColors.primaryLight.shade400),
                        ),
                        Text(
                          "Minnie Lehmann",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: MyColors.primaryLight.shade900),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage("assets/images/image.png"),
                    )
                  ],
                ),
                SizedBox(
                  height: 17,
                ),

              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Container(
                      padding: EdgeInsets.all(15),
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: MyColors.primaryLight.shade900,
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "August",
                                    style: TextStyle(
                                        fontSize: 12, color: MyColors.primary.shade900),
                                  ),
                                  Text(
                                    "Due in 5 days",
                                    style: TextStyle(
                                        fontSize: 12, color: MyColors.primary.shade900),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "€431.90",
                                style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () => print(""),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 37,
                              decoration: BoxDecoration(
                                  color: MyColors.primary.shade900,
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                  child: Text(
                                "Pay now",
                                style: TextStyle(
                                    color: MyColors.primaryLight.shade900,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 28,
                    ),
                    //Dashbord grid

                    Row(
                      children: [
                        DashboradGridItem(text1: "€250.90",text2: "Electricity",imagePath: "assets/images/ic_home.png",),
                        SizedBox(width: 8,),
                        DashboradGridItem(text1: "€126.10",text2: "Water",imagePath: "assets/images/ic_home.png",),
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        DashboradGridItem(text1: "€35.00",text2: "Trash",imagePath: "assets/images/ic_home.png",),
                        SizedBox(width: 8,),
                        DashboradGridItem(text1: "€19.00",text2: "Wifi",imagePath: "assets/images/ic_home.png",),
                      ],
                    ),
                    SizedBox(height: 27,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Messages",
                          style: TextStyle(
                              fontSize: 17, color: MyColors.primaryLight.shade900,
                          fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 16, color: MyColors.primaryLight.shade900),
                        )
                      ],
                    ),

                    SizedBox(height: 15,),

                    // Dashborad list
                    DashboardListItem(text1: "Andrea cobis",text2: "5 min ago", text3: "Problem with hote water"),
                    SizedBox(height: 8,),
                    DashboardListItem(text1: "Jean lox",text2: "25 min ago", text3: "Problem with wifi"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardListItem extends StatelessWidget {
  String? text1,text2,text3;
   DashboardListItem({
    Key? key, required this.text1,required this.text2,required this.text3
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: MyColors.primary.shade900,
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height:10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$text1",
                style: TextStyle(
                    fontSize: 12, color: MyColors.primaryLight.shade900),
              ),
              Text(
                "$text2",
                style: TextStyle(
                    fontSize: 12, color: MyColors.primaryLight.shade900),
              )
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "$text3",
            style: TextStyle(
                fontSize: 20,
                color: MyColors.primaryLight.shade900,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class DashboradGridItem extends StatelessWidget {
  String? text1="",text2="",imagePath="";
   DashboradGridItem({
    Key? key, required this.text1,required this.text2,required this.imagePath
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 35,
              width: 35,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: MyColors.primary.shade900,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Image(
                  image: AssetImage("$imagePath")),
            ),
            SizedBox(height: 15,),
            Text(
              "$text1",
              style: TextStyle(
                  fontSize: 27,
                  color: MyColors.primaryLight.shade900,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "$text2",
              style: TextStyle(
                  fontSize: 12, color: MyColors.primaryLight.shade400),
            ),
          ],
        ),
      ),
    );
  }
}
