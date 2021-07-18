import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telkomsel_app/general/general_variables.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: GeneralVariables.backgroundColor,
      appBar: AppBar(
        backgroundColor: GeneralVariables.primaryRedColor,
        title: RichText(
          text: TextSpan(
            text: "Hai, ",
            style: TextStyle(
              fontSize: 20,
              color: GeneralVariables.whiteColor,
            ),
            children: [
              TextSpan(
                text: "David",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )
              ),
            ]
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20),
            child: SvgPicture.asset(
              "assets/icons/qrcode.svg"
            ),
          )
        ],
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 8),
              color: GeneralVariables.primaryRedColor,
            ),
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: GeneralVariables.primaryRedColor,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(1000,250),
                    )
                  ),
                ),
                Container(
                  width: size.width,
                  height: 205,
                  margin: EdgeInsets.symmetric(horizontal: GeneralVariables.defaultPadding),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/simcard.png"),
                      fit: BoxFit.fill
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: GeneralVariables.defaultPadding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("081290112333",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: GeneralVariables.whiteColor
                              ),
                            ),
                            Container(
                              width: 84,
                              height: 15,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/simpati_logo.png"),
                                  fit: BoxFit.contain
                                )
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 21,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: GeneralVariables.defaultPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sisa Pulsa Anda",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: GeneralVariables.whiteColor
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Rp 34.000",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: GeneralVariables.whiteColor
                                  ),
                                ),
                                ElevatedButton(
                                  child: Text("Isi Pulsa",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: GeneralVariables.blackColor
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    primary: GeneralVariables.yellowColor,
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                      return HomePage();
                                    }));
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(
                        width: size.width,
                        height: 0.2,
                        color: GeneralVariables.blackColor,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: GeneralVariables.defaultPadding, vertical: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                  text: "Berlaku sampai ",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: GeneralVariables.whiteColor,
                                  ),
                                  children: [
                                    TextSpan(
                                        text: "25 Desember 2021",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        )
                                    ),
                                  ]
                              ),
                            ),
                            SizedBox(height: 4,),
                            Row(
                              children: [
                                Text("Telksomsel POIN",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: GeneralVariables.whiteColor
                                  ),
                                ),
                                SizedBox(width: 4,),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                  decoration: BoxDecoration(
                                    color: GeneralVariables.yellowColor,
                                    borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: Text("172",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: GeneralVariables.blackColor
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 12,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: GeneralVariables.defaultPadding),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: GeneralVariables.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: GeneralVariables.shadowColor.withOpacity(0.13),
                            spreadRadius: 0,
                            blurRadius: 16,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Internet",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: GeneralVariables.blackColor
                            ),
                          ),
                          SizedBox(height: 4,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("12.19",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: GeneralVariables.primaryRedColor
                                ),
                              ),
                              Text(" GB",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: GeneralVariables.darkGreyColor
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: GeneralVariables.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: GeneralVariables.shadowColor.withOpacity(0.13),
                            spreadRadius: 0,
                            blurRadius: 16,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Telpon",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: GeneralVariables.blackColor
                            ),
                          ),
                          SizedBox(height: 4,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("0",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: GeneralVariables.primaryRedColor
                                ),
                              ),
                              Text(" Min",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: GeneralVariables.darkGreyColor
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: GeneralVariables.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: GeneralVariables.shadowColor.withOpacity(0.13),
                            spreadRadius: 0,
                            blurRadius: 16,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("SMS",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: GeneralVariables.blackColor
                            ),
                          ),
                          SizedBox(height: 4,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("23",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: GeneralVariables.primaryRedColor
                                ),
                              ),
                              Text(" SMS",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: GeneralVariables.darkGreyColor
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Container(
              width: size.width,
              height: 8,
              color: GeneralVariables.greyColor,
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: GeneralVariables.defaultPadding),
              child: Text("Kategori Paket",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: GeneralVariables.blackColor
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
