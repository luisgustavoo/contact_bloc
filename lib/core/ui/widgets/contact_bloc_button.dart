import 'package:flutter/material.dart';

class ContactBlocButton extends StatelessWidget {
  const ContactBlocButton({
    required String text,
    required VoidCallback onPressed,
    super.key,
  })  : _onPressed = onPressed,
        _text = text;

  final VoidCallback _onPressed;
  final String _text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ElevatedButton(
        onPressed: _onPressed,
        child: Text(_text),
      ),
    );
  }
}
