import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/phone.page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30, top: 190),
        child: ListView(
          primary: false,
          children: <Widget>[
            SizedBox(
              child: Image.asset(
                'assets/TinderLogo.png',
                scale: 5,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 80,),
            Text(
              'Ao entrar você concorda com nossos \nTermos de Serviço e Política de privacidade.',
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      stops: [0.1, 0.9],
                      colors: [Colors.blue[900], Colors.lightBlue[800]]),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: SizedBox(
                    child: FlatButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Text('FAZER LOGIN COM FACEBOOK',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          wordSpacing: 1,
                          color: Colors.white)),
                  onPressed: () {},
                ))),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(25)),
              child: SizedBox.expand(
                child: FlatButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Text(
                    'ENTRAR COM O NÚMERO DE TELEFONE',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneNumber()));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(right: 0, left: 0),
              child: SizedBox(
                child: FlatButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Text(
                    'Problemas para fazer login?',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 37,
                right: 37,
              ),
              child: SizedBox(
                child: FlatButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Não postamos nada no facebook',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          stops: [0.1, 0.8],
          end: Alignment.bottomLeft,
          colors: [
            Color.fromRGBO(246, 132, 63, 1),
            Color.fromRGBO(215, 67, 131, 1),
          ],
        )),
      ),
    );
  }
}
