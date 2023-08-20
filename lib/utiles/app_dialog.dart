import 'package:flutter/material.dart';

class AppDialog {
  static BuildContext? _context;

  static void setup(BuildContext context) {
    _context = context;
  }

  static void showPopup({String? title, required String content}) {
    _showDialog(title: title, content: content);
  }

  static void showSuccess({String? title, required String content}) {
    _showDialog(title: title, content: content, icon: Icons.check_circle, color: Colors.green);
  }

  static void showWarning({String? title, required String content}) {
    _showDialog(title: title, content: content, icon: Icons.warning, color: Colors.orange);
  }

  static void showError({String? title, required String content}) {
    _showDialog(title: title, content: content, icon: Icons.error, color: Colors.red);
  }

  static void _showDialog({String? title, required String content, IconData? icon, Color? color}) {
    if (_context == null) {
      print('AppDialog is not set up. Call AppDialog.setup(context) first.');
      return;
    }

    showDialog(
      context: _context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: [
              if (icon != null && color != null) Icon(icon, color: color),
              if (title != null) Text(title),
            ],
          ),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  static void showSnackbar(String message) {
    if (_context == null) {
      print('AppDialog is not set up. Call AppDialog.setup(context) first.');
      return;
    }

    ScaffoldMessenger.of(_context!).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
