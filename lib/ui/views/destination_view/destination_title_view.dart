import 'package:flutter/material.dart';

class DestinationTitleView extends StatelessWidget {
  const DestinationTitleView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Oeschinen Lake Compground',
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.headline6?.fontSize ?? 34,
                      color: Colors.black
                    ),
                  ),
                  Text(
                    'Kandersteg, Switzerland',
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.subtitle1?.fontSize ?? 28,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              SizedBox(
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
              )
            ]
          )
        ],
      ),
    );
  }
}