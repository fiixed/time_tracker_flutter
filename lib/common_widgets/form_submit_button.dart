import 'package:flutter/material.dart';
import 'package:time_tracker_flutter/common_widgets/custom_elevated_button.dart';

class FormSubmitButton extends CustomElevatedButton {
  FormSubmitButton({
    Key key,
    @required String text,
    VoidCallback onPressed,
  }) : super(
          key: key,
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          height: 44.0,
          color: Colors.indigo,
          borderRadius: 4.0,
          onPressed: onPressed,
        );

  //     final ButtonStyle style = ElevatedButton.styleFrom(
  //   textStyle: const TextStyle(fontSize: 15.0),
  //   primary: color,
  //   onPrimary: Colors.black87,
  //   shape: RoundedRectangleBorder(
  //     borderRadius: BorderRadius.all(
  //       Radius.circular(borderRadius),
  //     ),
  //   ),
  // );
}
