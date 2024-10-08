import 'package:book_nexus/src/features/Authentication/mob_login.dart';
import 'package:book_nexus/src/features/Authentication/mob_signup.dart';
import 'package:book_nexus/src/constants/image_strings.dart';
import 'package:book_nexus/src/features/screens/onboarding/OnBoarding_Screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Choose_form extends StatefulWidget {
  const Choose_form({super.key});

  @override
  State<Choose_form> createState() => _Choose_formState();
}

class _Choose_formState extends State<Choose_form> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double textsize1 = screenWidth * 0.07;
    return Scaffold(
      backgroundColor: Colors.tealAccent.shade100,
      // appBar: AppBar(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.50,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(140),
                    bottomRight: Radius.circular(340))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Onboarding_Screen()));
                    },
                    icon: Icon(Icons.arrow_back_ios_new)),
                Center(
                  child: Image.asset(
                    MainLogo,
                    filterQuality: FilterQuality.high,
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.40,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Welcome to BookNexus',
            style: GoogleFonts.cinzel(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: textsize1,
                    color: Colors.black)),
          ),
          SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: TextButton(
                style: TextButton.styleFrom(
                    elevation: 20.0, shadowColor: Colors.black),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogIn()));
                },
                child: Center(
                  child: Text(
                    'Log in',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )),
          ),
          SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: TextButton(
                style: TextButton.styleFrom(
                    elevation: 20.0, shadowColor: Colors.black),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup()));
                },
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
