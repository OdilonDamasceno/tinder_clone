import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tinder_clone/pages/enable.locale.dart';

class PhoneNumber extends StatefulWidget {
  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color.fromRGBO(215, 67, 131, 1),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
          padding: EdgeInsets.only(top: 40, left: 30, right: 30),
          color: Colors.white,
          child: ListView(
            primary: false,
            children: <Widget>[
              Text(
                'Meu número é',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
              Form(
                  key: this._formKey,
                  autovalidate: true,
                  child: ListBody(
                    children: <Widget>[
                      SizedBox(
                        height: 70,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              width: 100,
                              child: TextFormField(
                                style: TextStyle(fontWeight: FontWeight.w600),
                                decoration: InputDecoration(
                                    prefix: Text(
                                      'BR +',
                                    ),
                                    suffixIcon: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.grey,
                                    )),
                                keyboardType: TextInputType.phone,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                              width: 200,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Número de telefone',
                                  contentPadding:
                                      EdgeInsets.only(top: 15, bottom: 15),
                                ),
                                /*validator: (input) =>
                                    input.contains(new RegExp(r'[0-9]'))
                                        ? null
                                        : 'Entre com um número válido',*/
                                keyboardType: TextInputType.phone,
                              )),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Seu número de telefone mudou?',
                            style: TextStyle(fontSize: 10),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 74, right: 0),
                            child: SizedBox(
                              child: FlatButton(
                                child: Text(
                                  'ENTRAR VIA EMAIL',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.pink,
                                    fontSize: 10,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Quando você tocar em Continuar, o Tinder lhe enviará uma mensagem de texto com o código de verificação. Tarifas de mensagens de dados podem ser aplicáveis. O número de telefone confirmado pode ser utilizado para entrar no Tinder.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[400]),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 230,
                          height: 20,
                          child: FlatButton(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: Text(
                              'Saiba oque acontece se seu número mudar.',
                              style: TextStyle(fontSize: 10),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                              'CONTINUAR',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600),
                            ),
                            onPressed: _submit,
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          )),
    );
  }

  void _submit() {
    if (_formKey.currentState.validate()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => EnableLocal()));
    }
  }
}
