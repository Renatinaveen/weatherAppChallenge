import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ManageCities extends StatefulWidget {
  const ManageCities({Key? key}) : super(key: key);

  @override
  _ManageCitiesState createState() => _ManageCitiesState();
}

class _ManageCitiesState extends State<ManageCities> {
  Color purple = Color(0xff6300B4);
  Color anotherPurple = Color(0xff5802B7);
  Color lightPurple = Color(0xff5203B8);

  Color veryLightPurple = Color(0xff5830C9);

  Color lightBlue = Color(0xff4306BE);
  Color blue = Color(0xff2B0AC3);

  Color containerBorderColor = Color(0xff8C72DA);
  Color containerColor = Color(0xff6135C2);

  var greenGradient = LinearGradient(
    colors: [
      Color.fromRGBO(140, 255, 144, 1),
      Color.fromRGBO(133, 255, 233, 1),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  late List<String> cities = ['Sentosa', 'Orchard'];
  late List<String> cityWeatherConditions = ['Mostly Sunny', 'Partly Cloudy'];
  late List<String> weatherIcons = [
    'assets/icons/sun.png',
    'assets/icons/cloud.png'
  ];

  late String cityTemperature = '37';
  late String temperatureSymbol = '\u{00B0}c';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            size: 44,
          ),
        ),
        title: Text(
          'Manage City',
          style:
              GoogleFonts.openSans(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [purple, anotherPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            purple,
            lightPurple,
            lightPurple,
            lightPurple,
            lightBlue,
            blue
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        )),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                itemCount: cities.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: SweepGradient(colors: [
                          Color(0XFF5923BE),
                          Color(0XFF5923BE),
                          Color(0XFF9E6CD5),
                          Color(0XFF9E6CD5),
                          Color(0XFF9E6CD5),
                          Color(0XFF5923BE),
                        ], startAngle: 1.5, endAngle: 6.5),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff722DC1),
                                Color(0xff6728C1),
                                Color(0xff5720BC)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  cities[index],
                                  style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          weatherIcons[index],
                                          height: 32,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              cityTemperature,
                                              style: GoogleFonts.openSans(
                                                  color: Colors.white,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Text(
                                              temperatureSymbol,
                                              style: GoogleFonts.openSans(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      cityWeatherConditions[index],
                                      style: GoogleFonts.openSans(
                                          color: Colors.white.withOpacity(0.6),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                gradient: SweepGradient(colors: [
                  Color(0XFF5237C9),
                  Color(0XFF5237C9),
                  Color(0XFF9278DC),
                  Color(0XFF9278DC),
                  Color(0XFF9278DC),
                  Color(0XFF5237C9),
                ], startAngle: 1.5, endAngle: 6.5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff5A38CA),
                          Color(0xff5532C8),
                          Color(0xff482CC5)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text('ADD CITY', style: GoogleFonts.openSans(
                        color: Colors.white,
                          fontSize: 18, letterSpacing: 3, fontWeight: FontWeight.w700),),
                    ),
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
