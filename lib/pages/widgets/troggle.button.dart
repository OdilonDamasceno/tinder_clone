import 'package:flutter/material.dart';

class TroggleButton extends StatefulWidget {
  @override
  _TroggleButtonState createState() => _TroggleButtonState();
}

class _TroggleButtonState extends State<TroggleButton> {
  bool _troggleValue = false;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 40,
        width: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: !_troggleValue ? Colors.amber : Colors.grey[200],
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
                top: 7,
                left: _troggleValue ? 0 : 47,
                right: _troggleValue ? 43 : 0,
                child: _troggleValue
                    ? Image.asset('assets/logo.png',color: Colors.grey[400],)
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Text('99',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),)
                        ],
                      )),
             Positioned(
              left: _troggleValue ? 40 : 0,
              right: _troggleValue ? 0 : 40,
              child: InkWell(
                onTap: troggleButton,
                child: AnimatedSwitcher(
                  duration: Duration(seconds: 0),
                  child: _troggleValue
                      ? Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey[100]),
                              borderRadius: BorderRadius.circular(17)),
                          height: 40,
                          width: 50,
                          
                        )
                      : Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey[100]),
                              borderRadius: BorderRadius.circular(17)),
                          height: 40,
                          width: 50,
                          child: Image.asset('assets/logo.png')
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  troggleButton() {
    setState(() {
      _troggleValue = !_troggleValue;
    });
  }
}
