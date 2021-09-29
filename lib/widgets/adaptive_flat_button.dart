import 'package:flutter/material.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String btnText;
  final Function btnPressHandler;

  AdaptiveFlatButton({@required this.btnText, @required this.btnPressHandler});

  //const AdaptiveFlatButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      textColor: Theme.of(context).primaryColor,
      onPressed: btnPressHandler,
      child: Text(
        btnText,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
