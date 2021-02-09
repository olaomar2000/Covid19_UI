import 'package:covid_19/main.dart';
import 'package:flutter/material.dart';
import 'package:covid_19/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'Counter.dart';

class MyHeadder extends StatelessWidget {
  final String image;
  final String textTop;
  final String textBottom;
  const MyHeadder({
    Key key, this.image, this.textTop, this.textBottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(top: 50, right: 20, left: 40),
        height: 350.0,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF4056C6),
                  Color(0xFF3382CC),
                ]),
            image: DecorationImage(
              image: AssetImage("assets/images/virus.png"),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset("assets/icons/menu.svg"),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  SvgPicture.asset(
                    image,
                    width: 230.0,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                  Positioned(
                    top: 20,
                    left: 150,
                    child: Text(
                      "$textTop\n$textBottom",
                      style:
                      kHeadingTextStyle.copyWith(color: Colors.white),
                    ),
                  ),
                  Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}