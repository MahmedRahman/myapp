import 'package:flutter/material.dart';
import 'package:myapp/utiles/app_dialog.dart';

class SetupAppDialog extends StatelessWidget {
  final Widget child;

  SetupAppDialog({required this.child});

  @override
  Widget build(BuildContext context) {
    AppDialog.setup(context);
    return child;
  }
}
