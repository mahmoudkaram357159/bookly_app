import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key, required this.errorMessage,
  });
  final String errorMessage ;
  @override
  Widget build(BuildContext context) {
    return Text(errorMessage, style: Theme.of(context).textTheme.headline6);
  }
}