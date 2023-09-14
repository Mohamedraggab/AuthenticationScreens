import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'custom_text_filed.dart';
import 'login.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                      child: buildCreateAccountLabel(),
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
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: buildForm(context),
                      ),
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

  Column buildCreateAccountLabel() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Create Account',
          style: GoogleFonts.montserratAlternates(
            fontSize: 36,
            fontWeight: FontWeight.w700,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
      ],
    );
  }

  Column buildForm(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        customTextForm(
            label: 'User Name', preIcon: Icons.person, isPassword: false),
        const SizedBox(
          height: 20,
        ),
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
        customTextForm(
            label: 'Phone Number', preIcon: Icons.phone, isPassword: false),
        const SizedBox(
          height: 20,
        ),
        buildRegisterButton(),
        buildNavToLogin(context),
      ],
    );
  }

  Row buildRegisterButton() {
    return Row(
      children: [
        Expanded(
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                  minimumSize:
                      const MaterialStatePropertyAll(Size(double.infinity, 40)),
                  backgroundColor: MaterialStatePropertyAll(HexColor('0B666A')),
                ),
                onPressed: () {},
                child: const Text('Register'))),
      ],
    );
  }

  Row buildNavToLogin(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Already have an account'),
        TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ));
          },
          child: const Text('Login'),
        ),
      ],
    );
  }
}
