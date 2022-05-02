import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Welcome_Details extends StatelessWidget {
  const Welcome_Details({Key? key}) : super(key: key);

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
                ? 45
                : 70;
        double descriptionSize =
            stringInformation.deviceScreenType == DeviceScreenType.mobile
                ? 16
                : 21;

        return Container(
          width: 550,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 60,
              ),
              Text(
                'Books That Get You Hooked!',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                  fontSize: titleSize,
                  color: const Color.fromARGB(255, 68, 53, 40),
                ),
                textAlign: textAlignment,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Find recommendations. Read reviews. Share your opinions and personal favorites. Connect with fellow booklovers.',
                style: TextStyle(
                    fontSize: descriptionSize,
                    height: 1.7,
                    color: const Color.fromARGB(255, 68, 53, 40)),
                textAlign: textAlignment,
              )
            ],
          ),
        );
      },
    );
  }
}
