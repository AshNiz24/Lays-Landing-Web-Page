// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import "../../constants/constants.dart";

class Header extends StatefulWidget {
  final String currentPageId;
  const Header({Key? key, required this.currentPageId}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  void navigateToHome(BuildContext context) {
    Navigator.popAndPushNamed(context, '/');
  }

  void navigateToAbout(BuildContext context) {
    Navigator.popAndPushNamed(context, '/About');
  }

  void navigateToContact(BuildContext context) {
    Navigator.popAndPushNamed(context, '/Contact');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      color: darkBlue,
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.02,
        vertical: MediaQuery.of(context).size.height * 0.02,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            lays,
            style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).textScaleFactor * 43,
              fontFamily: "Pacifico",
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.05,
            // color: Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                widget.currentPageId == "/"
                    ? ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: fillButtonBg, elevation: 0),
                        onPressed: () =>
                            {Navigator.popAndPushNamed(context, '/')},
                        child: Text(
                          navBarLabels[0],
                          style: const TextStyle(
                            color: black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    : OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: white,
                            width: 2,
                          ),
                          foregroundColor: white,
                        ),
                        onPressed: () =>
                            {Navigator.of(context).popAndPushNamed("/")},
                        child: Text(
                          navBarLabels[0],
                        ),
                      ),
                SizedBox(
                  width: 20,
                ),
                widget.currentPageId == "/About"
                    ? ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: fillButtonBg, elevation: 0),
                        onPressed: () => {
                          Navigator.popAndPushNamed(context, '/About'),
                        },
                        child: Text(
                          navBarLabels[1],
                          style: const TextStyle(
                            color: black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    : OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: white,
                            width: 2,
                          ),
                          foregroundColor: white,
                        ),
                        onPressed: () => {
                          Navigator.of(context).popAndPushNamed("/About"),
                        },
                        child: Text(
                          navBarLabels[1],
                        ),
                      ),
                SizedBox(
                  width: 20,
                ),
                widget.currentPageId == "/Contact"
                    ? ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: fillButtonBg, elevation: 0),
                        onPressed: () => {
                          Navigator.popAndPushNamed(context, '/Contact'),
                        },
                        child: Text(
                          navBarLabels[2],
                          style: const TextStyle(
                            color: black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    : OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: white,
                            width: 2,
                          ),
                          foregroundColor: white,
                        ),
                        onPressed: () => {
                          Navigator.of(context).popAndPushNamed("/Contact"),
                        },
                        child: Text(
                          navBarLabels[2],
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
