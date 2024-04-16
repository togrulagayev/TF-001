import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'StyleSage',
          style: GoogleFonts.architectsDaughter().copyWith(fontSize: 35.0),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'REGISTER',
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  style: const ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(
                      Color(0xFF000000),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ));
                  },
                  child: Text(
                    'SIGN IN',
                    style: GoogleFonts.roboto().copyWith(
                      fontSize: 16.0,
                      decoration: TextDecoration.underline,
                      decorationThickness: 4,
                    ),
                  ),
                ),
              ],
            ),
            // const Spacer(),
            Text(
              'NEW TO OPEN FASHION?',
              style: GoogleFonts.roboto().copyWith(
                fontSize: 16.0,
                color: const Color(0xFF000000),
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Register to speed up the checkout\nprocess and manage your order',
              style: GoogleFonts.roboto().copyWith(
                fontSize: 14.0,
                color: const Color(0xFF888888),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 52) / 2,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      labelStyle: GoogleFonts.roboto().copyWith(
                        color: const Color(0xFF888888),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 52) / 2,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      labelStyle: GoogleFonts.roboto().copyWith(
                        color: const Color(0xFF888888),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email Address',
                labelStyle: GoogleFonts.roboto().copyWith(
                  color: const Color(0xFF888888),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: GoogleFonts.roboto().copyWith(
                  color: const Color(0xFF888888),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            const Spacer(),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'By you clicking Register Now, you agree to our\n',
                    style: GoogleFonts.roboto().copyWith(
                      color: const Color(0xFF888888),
                    ),
                  ),
                  TextSpan(
                    text: 'Terms & Conditions',
                    style: GoogleFonts.roboto().copyWith(
                      color: const Color(0xFFF93C00),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' and ',
                    style: GoogleFonts.roboto().copyWith(
                      color: const Color(0xFF888888),
                    ),
                  ),
                  TextSpan(
                    text: 'Privacy Policy.',
                    style: GoogleFonts.roboto().copyWith(
                      color: const Color(0xFFF93C00),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xFFF93C00),
                      ),
                      side: MaterialStatePropertyAll(
                        BorderSide.none,
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'REGISTER NOW',
                        style: GoogleFonts.roboto().copyWith(
                          fontSize: 20.0,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                'OR',
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 16.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 3,
                ),
                IconButton(
                  iconSize: 24,
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0x0f888888),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FaIcon(
                      FontAwesomeIcons.google,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                const Spacer(),
                IconButton(
                  iconSize: 30,
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0x0f888888),
                    ),
                    shape: MaterialStatePropertyAll(
                      CircleBorder(),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FaIcon(
                      FontAwesomeIcons.apple,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                const Spacer(),
                IconButton(
                  iconSize: 24,
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0x0f888888),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
