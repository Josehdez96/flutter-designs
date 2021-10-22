import 'package:flutter/material.dart';
import 'package:flutter_designs/ui/views/destination_view/destination_actions_view.dart';
import 'package:flutter_designs/ui/views/destination_view/destination_description_view.dart';
import 'package:flutter_designs/ui/views/destination_view/destination_title_view.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: const [
            FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage('https://i.stack.imgur.com/GNhxO.png')
            ),
            DestinationTitleView(),
            DestinationActionsView(),
            SizedBox(height: 50),
            DestinationDescriptionView(),
            SizedBox(height: 60)
          ],
        ),
      ),
    );
  }
}