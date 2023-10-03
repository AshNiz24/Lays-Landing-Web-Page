import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../UI/components/header.dart';

class AboutPage extends StatelessWidget {
  static const id = "/About";
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.95,
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.015,
          vertical: MediaQuery.of(context).size.height * 0.035,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: borderBlue,
            width: 7,
            strokeAlign: StrokeAlign.outside,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Header(
              currentPageId: id,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: borderBlue,
                  width: 2,
                  strokeAlign: StrokeAlign.outside,
                ),
              ),
              child: const Center(
                child: Text(
                  aboutPageText,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: white, fontSize: 50),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
