import 'package:flutter/material.dart';
import 'package:telkomsel_app/general/general_variables.dart';
import 'package:telkomsel_app/pages/bot_nav_pages/home_page.dart';

class LoginVerificationPage extends StatefulWidget {
  @override
  _LoginVerificationPageState createState() => _LoginVerificationPageState();
}

class _LoginVerificationPageState extends State<LoginVerificationPage> {
  TextEditingController verificationController = TextEditingController();

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
                  Text("Masukan kode unik yang kami kirim",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 12,),
                  RichText(
                    text: TextSpan(
                      text: "Silahkan periksa SMS kamu dan masukan kode unik yang kami kirimkan ke ",
                      style: TextStyle(
                        color: GeneralVariables.blackColor,
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: "081290112333",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          )
                        )
                      ]
                    ),
                  ),
                  SizedBox(height: 24,),
                  Text("Kode Unik",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8,),
                  TextField(
                    controller: verificationController,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 14
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide(color: GeneralVariables.borderTextFieldColor)
                      ),
                      hintText: "Cth. q5Tsgh***",
                    ),
                    onSubmitted: (value) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
                    },
                  ),
                  SizedBox(height: 16,),
                  RichText(
                    text: TextSpan(
                        text: "Tidak menerima SMS ? ",
                        style: TextStyle(
                          color: GeneralVariables.blackColor,
                          fontSize: 14,
                        ),
                        children: [
                          TextSpan(
                              text: "Kirim ulang",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: GeneralVariables.primaryRedColor
                              )
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 32,),
                  Container(
                    width: size.width,
                    height: 42,
                    child: ElevatedButton(
                      child: Text("Kirim",
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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
