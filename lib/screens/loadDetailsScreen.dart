import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liveasy/constants/color.dart';
import 'package:liveasy/constants/spaces.dart';
import 'package:liveasy/widgets/additionalDescription_LoadDetails.dart';
import 'package:liveasy/widgets/buttons/backButtonWidget.dart';
import 'package:liveasy/widgets/buttons/bidButton.dart';
import 'package:liveasy/widgets/buttons/bookNowButton.dart';
import 'package:liveasy/widgets/buttons/callButton.dart';
import 'package:liveasy/widgets/driverDetails_LoadDetails.dart';
import 'package:liveasy/widgets/headingTextWidget.dart';
import 'package:liveasy/widgets/locationDetails_LoadDetails.dart';
import 'package:liveasy/widgets/requirementsLoad_DetailsWidget.dart';
import 'package:liveasy/widgets/buttons/shareButton.dart';

// ignore: must_be_immutable
class LoadDetailsScreen extends StatefulWidget {
  String? loadId;
  String? loadingPoint;
  String? loadingPointCity;
  String? loadingPointState;
  String? id;
  String? unloadingPoint;
  String? unloadingPointCity;
  String? unloadingPointState;
  String? productType;
  String? truckType;
  String? noOfTrucks;
  String? weight;
  String? comment;
  String? status;
  String? date;

  LoadDetailsScreen(
      {this.loadId,
      this.loadingPoint,
      this.loadingPointCity,
      this.loadingPointState,
      this.id,
      this.unloadingPoint,
      this.unloadingPointCity,
      this.unloadingPointState,
      this.productType,
      this.truckType,
      this.noOfTrucks,
      this.weight,
      this.comment,
      this.status,
      this.date});

  @override
  _LoadDetailsScreenState createState() => _LoadDetailsScreenState();
}

class _LoadDetailsScreenState extends State<LoadDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: space_4),
        child: Column(
          children: [
            SizedBox(
              height: space_8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackButtonWidget(),
                SizedBox(
                  width: space_3,
                ),
                HeadingTextWidget("Load Details"),
                // HelpButtonWidget(),
              ],
            ),
            SizedBox(
              height: space_3,
            ),
            Stack(
              children: [
                DriverDetailsLoadDetails(),
                Padding(
                  padding: EdgeInsets.only(
                      left: space_6, top: (space_14 * 2) + 3, right: space_6),
                  child: Container(
                    height: 51,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(space_1 + 3)),
                    child: Card(
                        color: white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [BidButton(widget.loadId), CallButton()],
                        )),
                  ),
                )
              ],
            ),
            Expanded(
              child: Card(
                elevation: 5,
                child: Padding(
                  padding:
                      EdgeInsets.fromLTRB(space_3, space_2, space_3, space_3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LocationDetailsLoadDetails(
                        loadingPoint: widget.loadingPoint,
                        loadingPointCity: widget.loadingPointCity,
                        loadingPointState: widget.loadingPointState,
                        unloadingPoint: widget.unloadingPoint,
                        unloadingPointCity: widget.unloadingPointCity,
                        unloadingPointState: widget.unloadingPointState,
                      ),
                      SizedBox(
                        height: space_3,
                      ),
                      Container(
                        color: solidLineColor,
                        height: 1,
                      ),
                      SizedBox(
                        height: space_2,
                      ),
                      RequirementsLoadDetails(widget.truckType, "NA",
                          widget.weight, widget.productType),
                      SizedBox(
                        height: space_3,
                      ),
                      AdditionalDescriptionLoadDetails(widget.comment),
                      SizedBox(
                        height: space_4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BookNowButton(),
                          SizedBox(
                            width: space_2,
                          ),
                          ShareButton()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}