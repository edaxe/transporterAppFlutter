import 'package:flutter/material.dart';
import 'package:liveasy/constants/color.dart';
import 'package:liveasy/constants/fontSize.dart';
import 'package:liveasy/constants/fontWeights.dart';
import 'package:liveasy/constants/spaces.dart';
import 'package:liveasy/providerClass/providerData.dart';
import 'package:liveasy/screens/PostLoadScreens/PostLoadScreenOne.dart';
import 'package:liveasy/widgets/Header.dart';
import 'package:liveasy/widgets/OrderScreenNavigationBarButton.dart';
import 'package:provider/provider.dart';

import 'orderScreens/order.dart';

class PostOrdersScreen extends StatefulWidget {
  const PostOrdersScreen({Key? key}) : super(key: key);

  @override
  _PostOrdersScreenState createState() => _PostOrdersScreenState();
}

class _PostOrdersScreenState extends State<PostOrdersScreen> {
  List screens = [order(), Text('on going'), Text('delivered')];

  @override
  Widget build(BuildContext context) {
    ProviderData providerData = Provider.of<ProviderData>(context);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        padding: EdgeInsets.fromLTRB(space_4, space_4, space_4, space_2),
        child: Column(
          children: [
            Header(
              reset: false,
              text: 'Orders',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OrderScreenNavigationBarButton(text: 'My Loads', value: 0),
                OrderScreenNavigationBarButton(text: 'On-going', value: 1),
                OrderScreenNavigationBarButton(text: 'Delivered', value: 2)
              ],
            ),
            Divider(
              color: textLightColor,
              thickness: 1,
            ),
            Container(
              child: screens[providerData.upperNavigatorIndex],
            ),
          ],
        ),
      ),
    );
  }
}
