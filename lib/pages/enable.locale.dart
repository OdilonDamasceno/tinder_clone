import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/verify.email.dart';

class EnableLocal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 60, right: 60, top: 80),
        child: ListView(
          primary: false,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[400]),
                color: Colors.grey[300],
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.location_on,
                color: Colors.white,
                size: 125,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            SizedBox(
              child: Text(
                'Ativar localização',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              child: Text(
                'Você precisa ativar a localização para usar o Tinder.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.3, 0.9],
                  colors: [
                    Colors.pink[400],
                    Colors.deepOrange[400],
                  ],
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: SizedBox(
                child: FlatButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Text(
                    'ATIVAR LOCALIZAÇÃO',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => VerifyEmail()),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: SizedBox(
                child: FlatButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'CONTE MAIS',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.grey[500],
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
