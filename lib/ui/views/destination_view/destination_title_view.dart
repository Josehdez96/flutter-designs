import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DestinationTitleView extends StatelessWidget {
  const DestinationTitleView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _DestinationTitle(),
          SizedBox(height: 100),
          _DestinationScore()
        ]
      ),
    );
  }
}
class _DestinationTitle extends StatelessWidget {
  const _DestinationTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Oeschinen Lake Compground',
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.headline6?.fontSize ?? 34,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Kandersteg, Switzerland',
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.subtitle1?.fontSize ?? 28,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}

class _DestinationScore extends StatelessWidget {
  const _DestinationScore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Row(
        children: const [
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text(
            '41',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black
            ),
          )
        ],
      ),
    );
  }
}

