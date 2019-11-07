import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/user.page.dart';

class VerifyEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 30, right: 30),
        child: ListView(
          primary: false,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/logo.png',
                height: 70,
                width: 70,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Verificar seu e-mail',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Form(
              autovalidate: true,
              child: ListBody(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 4),
                        hintText: 'Digite o endereço de e-mail',
                        hintStyle: TextStyle(color: Colors.grey[350])),
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontWeight: FontWeight.w600),
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
                          'ENVIAR E-MAIL',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserPage()),
                              ModalRoute.withName('/user'));
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'OU',
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[800], width: 2),
                        borderRadius: BorderRadius.circular(25)),
                    child: SizedBox(
                      child: FlatButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.group_work),
                            Container(
                              width: 260,
                              child: Text(
                                'ENTRAR COM O GOOGLE',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 70,
                    child: Text(
                      'Faça a verificação instantânea conectando sua conta do Google',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
