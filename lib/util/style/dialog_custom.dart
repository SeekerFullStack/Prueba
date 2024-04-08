import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogCuston {
  DialogCuston();

  Future<dynamic> showCustomDialog({
    required String title,
    required String message,
    VoidCallback? onPositivePressed,
    VoidCallback? onNegativePressed,
    required BuildContext context,
  }) {
    return showDialog(
      context: context,
      builder: (_) => CupertinoAlertDialog(
        title: Text(title),
        content: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(message),
        ),
        actions: <Widget>[
          CupertinoDialogAction(
            onPressed: onPositivePressed ??
                () {
                  Navigator.pushReplacementNamed(context, "login");
                },
            child: const Text(
              "Aceptar",
              style: TextStyle(color: CupertinoColors.systemBlue),
            ),
          ),
          CupertinoDialogAction(
            onPressed: onNegativePressed ?? () {},
            child: const Text(
              "Cancelar",
              style: TextStyle(color: CupertinoColors.systemRed),
            ),
          ),
        ],
      ),
    );
  }
}
