import 'package:auth_screens/register.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'custom_text_filed.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: HexColor('071952'),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: double.infinity,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      decoration: BoxDecoration(
                        color: HexColor('071952'),
                      ),
                      /////////////Login Header in dark part/////////////////////////
                      child: buildLoginHeader(),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: double.infinity,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      )),
                      color: HexColor('97FEED'),
                      ////////////////form in white space//////////////////
                      child: buildFormInWhiteSpace(context),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding buildFormInWhiteSpace(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customTextForm(
              label: 'Email', preIcon: Icons.email_outlined, isPassword: false),
          const SizedBox(
            height: 20,
          ),
          customTextForm(
              label: 'Password', preIcon: Icons.password, isPassword: true),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        minimumSize: const MaterialStatePropertyAll(
                            Size(double.infinity, 48)),
                        backgroundColor:
                            MaterialStatePropertyAll(HexColor('071952')),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily:
                                GoogleFonts.montserratAlternates().fontFamily),
                      ))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Don\'t have an account'),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ));
                },
                child: const Text('SignUp'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column buildLoginHeader() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Login',
          style: GoogleFonts.montserratAlternates(
            fontSize: 36,
            fontWeight: FontWeight.w700,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Please Sign in to continue',
          style: GoogleFonts.montserratAlternates(
            fontSize: 22,
            color: Colors.white.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
