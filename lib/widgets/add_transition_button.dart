import 'package:flutter/material.dart';

class AddNewTransitionButton extends StatelessWidget {
  final String btnText;
  final Function btnPressHandler;

  AddNewTransitionButton(
      {@required this.btnText, @required this.btnPressHandler});
  //const AddNewTransitionButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: btnPressHandler,
      child: Text(btnText),
      color: Theme.of(context).primaryColor,
      textColor: Theme.of(context).textTheme.button.color,
    );
  }
}
