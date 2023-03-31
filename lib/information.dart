import 'dart:async';
import 'package:flutter/material.dart';

class info extends StatefulWidget {
  int index;
  String headline;
  String content;
  String source;
  DateTime published;

  info({this.index, this.source, this.content, this.published, this.headline});

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Column(
          children: [
            // Column(
            //   children: <Widget>[
            //     // Expanded(
            //     //   child: Image.asset(
            //     //     "assets/marlin-fish${widget.index}.jpg",
            //     //     fit: BoxFit.cover,
            //     //     height: double.infinity,
            //     //     width: double.infinity,
            //     //     alignment: Alignment.center,
            //     //   ),
            //     // )
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                elevation: 2.0,
                fillColor: Colors.black26.withOpacity(0.2),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 25.0,
                ),
                padding: EdgeInsets.all(15.0),
                shape: CircleBorder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.headline,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24,
                    color: Colors.white,
                    letterSpacing: 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Text(
                widget.content,
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: 'RobotoSlab',
                    fontSize: 22,
                    color: Color(0xffbababa)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
