import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telkomsel_app/general/general_variables.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imageCategoryPackage1 = [
    "assets/images/kategori1.png",
    "assets/images/kategori2.png",
    "assets/images/kategori3.png",
    "assets/images/kategori4.png",
  ];

  List nameCategoryPackage1 = [
    "Internet",
    "Telpon",
    "SMS",
    "Roaming",
  ];

  List imageCategoryPackage2 = [
    "assets/images/kategori5.png",
    "assets/images/kategori6.png",
    "assets/images/kategori7.png",
    "assets/images/kategori8.png",
  ];

  List nameCategoryPackage2 = [
    "Hiburan",
    "Unggulan",
    "Tersimpan",
    "Riwayat",
  ];

  List imageNewFromTelkomsel = [
    "assets/images/terbaru1.png",
    "assets/images/terbaru2.png",
  ];

  List imageTanggapCovid19 = [
    "assets/images/tanggap_covid1.png",
    "assets/images/tanggap_covid2.png",
  ];

  List textTanggapCovid19 = [
    "Diskon Spesial 25% Untuk Pelanggan Baru",
    "Bebas Kuota Akses Layanan Kesehatan",
  ];

  List imageLinkAja = [
    "assets/images/linkaja1.png",
    "assets/images/linkaja2.png",
    "assets/images/linkaja3.png",
  ];

  List textLinkAja = [
    "Bayar Serba Cepat",
    "Cukup Snap QR",
    "NO! Credit Card",
  ];

  List imageVocer = [
    "assets/images/vocer1.png",
    "assets/images/vocer2.png",
  ];

  List textVocer = [
    "Double Benefits from DOUBLE UNTUNG",
    "Join Undi-Undi Hepi 2020!",
  ];

  List imagePenawaran = [
    "assets/images/penawaran1.png",
    "assets/images/penawaran2.png",
  ];

  List textPenawaran = [
    "Terus Belajar dari Rumahmu dengan Ruangguru!",
    "Belajar Kini Makin Mudah dengan Paket ilmupedia!"
  ];

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
                    )),
              ]),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20),
            child: SvgPicture.asset("assets/icons/qrcode.svg"),
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
                        bottom: Radius.elliptical(1000, 250),
                      )),
                ),
                Container(
                  width: size.width,
                  height: 205,
                  margin: EdgeInsets.symmetric(
                      horizontal: GeneralVariables.defaultPadding),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/simcard.png"),
                          fit: BoxFit.fill)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: GeneralVariables.defaultPadding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "081290112333",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: GeneralVariables.whiteColor),
                            ),
                            Container(
                              width: 84,
                              height: 15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/simpati_logo.png"),
                                      fit: BoxFit.contain)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 21,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: GeneralVariables.defaultPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sisa Pulsa Anda",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: GeneralVariables.whiteColor),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp 34.000",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: GeneralVariables.whiteColor),
                                ),
                                ElevatedButton(
                                  child: Text(
                                    "Isi Pulsa",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: GeneralVariables.blackColor),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    primary: GeneralVariables.yellowColor,
                                  ),
                                  onPressed: () {
                                    // Navigator.pushReplacement(context,
                                    //     MaterialPageRoute(builder: (context) {
                                    //   return HomePage();
                                    // }));
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        width: size.width,
                        height: 0.2,
                        color: GeneralVariables.blackColor,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: GeneralVariables.defaultPadding,
                            vertical: 12),
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
                                        )),
                                  ]),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Telksomsel POIN",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: GeneralVariables.whiteColor),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                  decoration: BoxDecoration(
                                      color: GeneralVariables.yellowColor,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Text(
                                    "172",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: GeneralVariables.blackColor),
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
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: GeneralVariables.defaultPadding),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: GeneralVariables.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color:
                                GeneralVariables.shadowColor.withOpacity(0.13),
                            spreadRadius: 0,
                            blurRadius: 16,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Internet",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: GeneralVariables.blackColor),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "12.19",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: GeneralVariables.primaryRedColor),
                              ),
                              Text(
                                " GB",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: GeneralVariables.darkGreyColor),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: GeneralVariables.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color:
                                GeneralVariables.shadowColor.withOpacity(0.13),
                            spreadRadius: 0,
                            blurRadius: 16,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Telpon",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: GeneralVariables.blackColor),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: GeneralVariables.primaryRedColor),
                              ),
                              Text(
                                " Min",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: GeneralVariables.darkGreyColor),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: GeneralVariables.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color:
                                GeneralVariables.shadowColor.withOpacity(0.13),
                            spreadRadius: 0,
                            blurRadius: 16,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "SMS",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: GeneralVariables.blackColor),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "23",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: GeneralVariables.primaryRedColor),
                              ),
                              Text(
                                " SMS",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: GeneralVariables.darkGreyColor),
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
            SizedBox(
              height: 25,
            ),
            Container(
              width: size.width,
              height: 8,
              color: GeneralVariables.greyColor,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: GeneralVariables.defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kategori Paket",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: GeneralVariables.blackColor),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                        List.generate(imageCategoryPackage1.length, (index) {
                      return Container(
                        padding: EdgeInsets.only(top: 11, left: 11, right: 11),
                        child: Column(
                          children: [
                            Container(
                              width: 53,
                              height: 53,
                              decoration: BoxDecoration(
                                color: GeneralVariables.yellowColor
                                    .withOpacity(0.2),
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(imageCategoryPackage1[index]),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              nameCategoryPackage1[index],
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: GeneralVariables.blackColor),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                        List.generate(imageCategoryPackage2.length, (index) {
                      return Container(
                        padding: EdgeInsets.only(top: 11, left: 11, right: 11),
                        child: Column(
                          children: [
                            Container(
                              width: 53,
                              height: 53,
                              decoration: BoxDecoration(
                                color: GeneralVariables.yellowColor
                                    .withOpacity(0.2),
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(imageCategoryPackage2[index]),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              nameCategoryPackage2[index],
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: GeneralVariables.blackColor),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: GeneralVariables.defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Terbaru dari Telkomsel",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: GeneralVariables.blackColor),
                  ),
                  Text(
                    "Lihat Semua",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: GeneralVariables.primaryRedColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: GeneralVariables.defaultPadding,
            ),
            Container(
              height: 100,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: imageNewFromTelkomsel.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      index == 0
                          ? SizedBox(width: GeneralVariables.defaultPadding)
                          : SizedBox(width: 12),
                      Container(
                        width: 248,
                        height: 100,
                        child: Image.asset(
                          imageNewFromTelkomsel[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      index == imageNewFromTelkomsel.length - 1
                          ? SizedBox(width: GeneralVariables.defaultPadding)
                          : SizedBox(),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: GeneralVariables.defaultPadding),
              child: Text(
                "Tanggap COVID-19",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: GeneralVariables.blackColor),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(top: 20, bottom: 32),
              child: Row(
                children: List.generate(imageTanggapCovid19.length, (index) {
                  return Row(
                    children: [
                      index == 0
                          ? SizedBox(width: GeneralVariables.defaultPadding)
                          : SizedBox(width: 12),
                      Container(
                        width: 248,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: GeneralVariables.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              color:
                              GeneralVariables.shadowColor.withOpacity(0.13),
                              spreadRadius: 0,
                              blurRadius: 16,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 248,
                              height: 112,
                              child: Image.asset(
                                imageTanggapCovid19[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              child: Text(textTanggapCovid19[index],
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: GeneralVariables.blackColor
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      index == imageTanggapCovid19.length - 1
                          ? SizedBox(width: GeneralVariables.defaultPadding)
                          : SizedBox(),
                    ],
                  );
                }),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: GeneralVariables.defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "AYO! Pake LinkAja!",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: GeneralVariables.blackColor),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    "Pakai LinkAja untuk beli pulsa, beli paket data dan bayar tagihan lebih mudah.",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: GeneralVariables.blackColor),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(top: 20, bottom: 32),
              child: Row(
                children: List.generate(imageLinkAja.length, (index) {
                  return Row(
                    children: [
                      index == 0
                          ? SizedBox(width: GeneralVariables.defaultPadding)
                          : SizedBox(width: 12),
                      Container(
                        width: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: GeneralVariables.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              color:
                              GeneralVariables.shadowColor.withOpacity(0.13),
                              spreadRadius: 0,
                              blurRadius: 16,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 145,
                              height: 96,
                              child: Image.asset(
                                imageLinkAja[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              child: Text(textLinkAja[index],
                                maxLines: 1,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: GeneralVariables.blackColor
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      index == imageLinkAja.length - 1
                          ? SizedBox(width: GeneralVariables.defaultPadding)
                          : SizedBox(),
                    ],
                  );
                }),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: GeneralVariables.defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cari Voucher, Yuk!",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: GeneralVariables.blackColor),
                  ),
                  Text(
                    "Lihat Semua",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: GeneralVariables.primaryRedColor),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(top: 20, bottom: 32),
              child: Row(
                children: List.generate(imageVocer.length, (index) {
                  return Row(
                    children: [
                      index == 0
                          ? SizedBox(width: GeneralVariables.defaultPadding)
                          : SizedBox(width: 12),
                      Container(
                        width: 248,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: GeneralVariables.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              color:
                              GeneralVariables.shadowColor.withOpacity(0.13),
                              spreadRadius: 0,
                              blurRadius: 16,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 248,
                              height: 112,
                              child: Image.asset(
                                imageVocer[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              child: Text(textVocer[index],
                                maxLines: 1,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: GeneralVariables.blackColor
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      index == imageVocer.length - 1
                          ? SizedBox(width: GeneralVariables.defaultPadding)
                          : SizedBox(),
                    ],
                  );
                }),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: GeneralVariables.defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Penawaran Khusus",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: GeneralVariables.blackColor),
                  ),
                  Text(
                    "Lihat Semua",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: GeneralVariables.primaryRedColor),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(top: 20, bottom: 32),
              child: Row(
                children: List.generate(imagePenawaran.length, (index) {
                  return Row(
                    children: [
                      index == 0
                          ? SizedBox(width: GeneralVariables.defaultPadding)
                          : SizedBox(width: 12),
                      Container(
                        width: 248,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: GeneralVariables.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              color:
                              GeneralVariables.shadowColor.withOpacity(0.13),
                              spreadRadius: 0,
                              blurRadius: 16,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 248,
                              height: 112,
                              child: Image.asset(
                                imagePenawaran[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              child: Text(textPenawaran[index],
                                maxLines: 1,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: GeneralVariables.blackColor
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      index == imagePenawaran.length - 1
                          ? SizedBox(width: GeneralVariables.defaultPadding)
                          : SizedBox(),
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
