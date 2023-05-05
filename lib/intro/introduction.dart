import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:wmsm_component/custom/widgets/custom_elevatedbutton.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () => Navigator.pop(context),
          )),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: <Widget>[
            Center(
              child: SvgPicture.asset(
                fit: BoxFit.cover,
                'assets/images/wearable.svg',
              ),
            ).padding(bottom: 20).height(200),
            const Text("Let's get healthier together")
                .fontSize(20)
                .fontWeight(FontWeight.bold)
                .padding(bottom: 10),
            RichText(
              text: const TextSpan(
                text:
                    'Create better daily habits by tracking your sleep and step and stay motivated by joining our challenges to earn ',
                style: TextStyle(fontSize: 16, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'one day unrecorded leave',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ).padding(bottom: 30),
            <Widget>[
              const Icon(Icons.check_circle_rounded, color: Colors.green)
                  .padding(right: 10),
              const Expanded(
                child: Text(
                    "Automatically sync data with your local health provider app"),
              )
            ]
                .toRow(mainAxisAlignment: MainAxisAlignment.start)
                .padding(bottom: 10),
            <Widget>[
              const Icon(Icons.check_circle_rounded, color: Colors.green)
                  .padding(right: 10),
              const Expanded(
                child: Text("Able to track your challenges progress"),
              )
            ]
                .toRow(mainAxisAlignment: MainAxisAlignment.start)
                .padding(bottom: 10),
            <Widget>[
              const Icon(Icons.check_circle_rounded, color: Colors.green)
                  .padding(right: 10),
              const Expanded(
                child: Text("No delay on syning your wearable data anymore"),
              )
            ]
                .toRow(mainAxisAlignment: MainAxisAlignment.start)
                .padding(bottom: 100),
            <Widget>[
              Expanded(
                child: CustomElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/dashboard'),
                    child: const Text("Next",
                        style: TextStyle(color: Colors.black))),
              )
            ].toRow(mainAxisAlignment: MainAxisAlignment.center)
          ]
              .toColumn(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
              )
              .paddingDirectional(horizontal: 20, vertical: 5),
        ),
      ),
    );
  }
}
