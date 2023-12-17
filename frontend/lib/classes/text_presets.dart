import 'package:flutter/material.dart';

class DefaultText extends StatelessWidget {
  const DefaultText({
    super.key,
    required this.text,
  });

  final text;

  @override
  Widget build(BuildContext context) {
    return Text('${text}',
      style: const TextStyle(
          fontSize: 16,
          color: Colors.black
      ),);
  }
}


class GreyText extends StatelessWidget {
  const GreyText({
    super.key,
    required this.text,
  });

  final text;

  @override
  Widget build(BuildContext context) {
    return Text('${text}',
        style: const TextStyle(
          fontSize: 16,
          color: Color.fromRGBO(150, 150, 150, 1),
        ));
  }
}


class Subheader extends StatelessWidget {
  const Subheader({
    super.key,
    required this.text,
  });

  final text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('${text}',
        style: const TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(153, 153, 153, 1),
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}


class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.text,
  });

  final text;

  @override
  Widget build(BuildContext context) {
    return Text('${text}',
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 30,
        color: Color.fromRGBO(91, 91, 91, 1),
      ),
    );
  }
}