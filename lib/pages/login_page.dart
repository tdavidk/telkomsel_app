import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telkomsel_app/general/general_variables.dart';
import 'package:telkomsel_app/pages/login_verification_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool isChecked = false;
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: GeneralVariables.backgroundColor,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: GeneralVariables.defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 32,),
                  Image.asset("assets/images/login1.png"),
                  SizedBox(height: 46,),
                  Text("Silahkan masuk dengan nomor telkomsel kamu",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 24,),
                  Text("Nomor HP",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8,),
                  TextField(
                    controller: phoneNumberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: GeneralVariables.borderTextFieldColor)
                      ),
                      hintText: "Cth. 08129011xxxx"
                    ),
                  ),
                  SizedBox(height: 16,),
                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(
                            value: isChecked,
                            activeColor: GeneralVariables.primaryRedColor,
                            onChanged: (bool? value){
                              setState(() {
                                isChecked = value!;
                              });
                            }
                        ),
                      ),
                      SizedBox(width: 12,),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            text: "Saya menyetujui ",
                            style: TextStyle(
                              color: GeneralVariables.blackColor,
                              fontSize: 14
                            ),
                            children: [
                              TextSpan(
                                text: "syarat",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  color: GeneralVariables.primaryRedColor,
                                ),
                              ),
                              TextSpan(
                                text: ", ",
                              ),
                              TextSpan(
                                text: "ketentuan",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: GeneralVariables.primaryRedColor,
                                ),
                              ),
                              TextSpan(
                                text: ", dan ",
                              ),
                              TextSpan(
                                text: "privasi",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: GeneralVariables.primaryRedColor,
                                ),
                              ),
                              TextSpan(
                                text: " Telkomsel",
                              ),
                            ]
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32,),
                  Container(
                    width: size.width,
                    height: 42,
                    child: ElevatedButton(
                      child: Text("LANJUT",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: GeneralVariables.primaryRedColor,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return LoginVerificationPage();
                        }));
                      },
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    alignment: Alignment.center,
                    child: Text("Atau masuk menggunakan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: GeneralVariables.darkGreyColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: size.width,
                          height: 42,
                          child: ElevatedButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(FontAwesomeIcons.facebookSquare, color: GeneralVariables.facebookColor, size: 18,),
                                SizedBox(width: 8,),
                                Text("Facebook",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: GeneralVariables.facebookColor,
                                  ),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: GeneralVariables.whiteColor,
                              side: BorderSide(color: GeneralVariables.facebookColor)
                            ),
                            onPressed: () {

                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Expanded(
                        child: Container(
                          width: size.width,
                          height: 42,
                          child: ElevatedButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(FontAwesomeIcons.twitter, color: GeneralVariables.twitterColor, size: 18,),
                                SizedBox(width: 8,),
                                Text("Twitter",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: GeneralVariables.twitterColor,
                                  ),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: GeneralVariables.whiteColor,
                                side: BorderSide(color: GeneralVariables.twitterColor)
                            ),
                            onPressed: () {

                            },
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
