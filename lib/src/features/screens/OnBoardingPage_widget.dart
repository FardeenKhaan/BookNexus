import 'package:book_nexus/src/features/model/model_OnBoarding.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPage_Widget extends StatelessWidget {
  const OnBoardingPage_Widget({
    super.key,
    required this.model,
  });

  final ModelOnboarding model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      color: model.bgcolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.4,
          ),
          Column(
            children: [
              Text(model.title,
                  style:
                      GoogleFonts.pacifico(textStyle: TextStyle(fontSize: 30))
                  // TextStyle(fontSize: 30, color: Colors.black)
                  ),
              Text(
                model.subtitle,

                style: GoogleFonts.aboreto(fontSize: 20),
                // TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(model.counterText),
          SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
