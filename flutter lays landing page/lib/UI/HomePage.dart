// ignore_for_file: prefer_const_constructors

import 'package:figmatest/UI/components/header.dart';
import 'package:figmatest/UI/components/tile.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';

class HomePage extends StatelessWidget {
  static const id = "/";
  const HomePage({Key? key}) : super(key: key);

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
              currentPageId: "/",
            ),
            Expanded(
              child: Container(
                // color: Colors.yellow,
                height: MediaQuery.of(context).size.height * 0.78,
                width: MediaQuery.of(context).size.width * 0.9,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      LaysTile(
                        mainTitle: laysFlavours[0],
                        subTitle: laysFlavoursSubtitle[0],
                        imgPath: laysFlavoursImages[0],
                      ),
                      LaysTile(
                        mainTitle: laysFlavours[1],
                        subTitle: laysFlavoursSubtitle[1],
                        imgPath: laysFlavoursImages[1],
                      ),
                      // LaysTile(title: "LAYS 1"),
                    ],
                  ),
                ),
              ),
            ),
            // Container(
            //   height: MediaQuery.of(context).size.height * 0.28,
            //   child: ClipRect(
            //     child: ListView.separated(
            //       itemBuilder: (context, builder) => LaysTile(
            //         title: "Lays tile",
            //       ),
            //       separatorBuilder: (context, builder) => SizedBox(
            //         height: MediaQuery.of(context).size.height * 0.035,
            //       ),
            //       itemCount: 5,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
