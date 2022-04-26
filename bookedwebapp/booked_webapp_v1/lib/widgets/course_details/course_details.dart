import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Course_Details extends StatelessWidget {
  const Course_Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, stringInformation) {
        var textAlignment =
            stringInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleSize =
            stringInformation.deviceScreenType == DeviceScreenType.mobile
                ? 50
                : 80;
        double descriptionSize =
            stringInformation.deviceScreenType == DeviceScreenType.mobile
                ? 16
                : 21;

        return Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'BOOKED',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    height: 0.9,
                    fontSize: titleSize),
                textAlign: textAlignment,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Find Books the will get you Hooked.',
                style: TextStyle(fontSize: descriptionSize, height: 1.7),
                textAlign: textAlignment,
              )
            ],
          ),
        );
      },
    );
  }
}
