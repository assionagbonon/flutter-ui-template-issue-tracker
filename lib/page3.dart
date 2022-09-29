import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:template1/app_colors.dart';

int selectedIndex = 1;

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(25),
        color: MyColors.primary.shade100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 35,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.close,
                    color: MyColors.primaryLight.shade900,
                    size: 19,
                  )),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Image(
                          image: AssetImage("assets/images/wrench.png"),
                          height: 40,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Report \nan issue",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: MyColors.primaryLight.shade900),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      "Sorry to heart that you have problem.  Our technician is here to help you.",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          color: MyColors.primaryLight.shade900,
                          height: 1.5),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Proprety",
                      style: TextStyle(
                          fontSize: 18,
                          color: MyColors.primaryLight.shade900,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(14),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Adress",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: MyColors.primaryLight.shade400),
                              ),
                              Icon(
                                Icons.more_horiz_rounded,
                                size: 18,
                                color: MyColors.primaryLight.shade900,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "ChausseestraBe 1,10115 Berlin",
                            style: TextStyle(
                                fontSize: 18,
                                color: MyColors.primaryLight.shade900,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Type of issue",
                      style: TextStyle(
                          fontSize: 18,
                          color: MyColors.primaryLight.shade900,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        IssueGridItem(
                            index: 1,
                            text1: "In-home",
                            text2: "I have an issue in my apartement",
                            imagePath: "assets/images/ic_home.png",
                        onTap: () {
                          selectedIndex = 1;
                          setState(() {});
                        },
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        IssueGridItem(
                            index: 2,
                            text1: "Communal",
                            text2: "This is an issue in public space",
                            imagePath: "assets/images/ic_home.png",
                          onTap: () {
                            selectedIndex = 2;
                            setState(() {});
                          },),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => print(""),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                    color: MyColors.primaryLight.shade900,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                    child: Text(
                  "Next",
                  style:
                      TextStyle(color: MyColors.primary.shade900, fontSize: 16),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IssueGridItem extends StatefulWidget {
  String? text1 = "", text2 = "", imagePath = "";
  int index;
  Function() ? onTap;

  IssueGridItem(
      {Key? key,
      required this.index,
      required this.text1,
      required this.text2,
      required this.imagePath,
      this.onTap})
      : super(key: key);

  @override
  State<IssueGridItem> createState() => _IssueGridItemState();
}

class _IssueGridItemState extends State<IssueGridItem> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: 1,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(18)),
              border: selectedIndex == widget.index
                  ? Border.all(color: MyColors.primary.shade400, width: 3)
                  : Border.all(color: Colors.white, width: 3)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: selectedIndex == widget.index
                          ? MyColors.primary.shade900
                          : MyColors.grey.shade50,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Image(image: AssetImage("${widget.imagePath}")),
                  ),
                  selectedIndex == widget.index
                      ? Icon(
                          CupertinoIcons.check_mark_circled_solid,
                          size: 15,
                          color: MyColors.primaryLight.shade900,
                        )
                      : Icon(
                          CupertinoIcons.circle,
                          size: 15,
                          color: MyColors.grey.shade600,
                        ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "${widget.text1}",
                style: TextStyle(
                    fontSize: 17,
                    color: MyColors.primaryLight.shade900,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "${widget.text2}",
                style: TextStyle(
                    fontSize: 13, color: MyColors.primaryLight.shade400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
