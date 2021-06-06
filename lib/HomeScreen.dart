import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_challenge/ManageCities.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  late String cityName = 'SINGAPORE';

  late List<String> weatherConditions = [
    'Mostly Sunny',
    'Partly Cloudy',
    'Foggy \n'
  ];

  late List<String> weatherIcons = [
    'assets/icons/sun.png',
    'assets/icons/cloud.png',
    'assets/icons/sun_with_cloud.png'
  ];

  late List<String> temperature = ['39', '38', '37.5'];

  late String temperature40 = '40';
  late String temperatureSymbol = '\u{00B0}c';

  late String today = 'Today';
  late String tomorrow = 'Tomorrow';

  late List<String> times = ['01:00', '02:00', '03:00'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Container(),
        title: Text(
          cityName,
          style: GoogleFonts.nunito(
              fontSize: 24, letterSpacing: 4, fontWeight: FontWeight.w900),
        ),
        centerTitle: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [purple, anotherPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
        ),
        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.more_vert),
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'Manage City'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(
                    choice,
                    style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                );
              }).toList();
            },
          ),
        ],
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
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        weatherConditions[0],
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${DateFormat.MMMMEEEEd('en_US').format(DateTime.now())}',
                        style: GoogleFonts.openSans(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(temperature40,
                              style: GoogleFonts.roboto(
                                  shadows: [
                                    Shadow(
                                        // bottomLeft
                                        offset: Offset(-1.5, -1.5),
                                        color: Color(0xffBFA6E8)),
                                    Shadow(
                                        // bottomRight
                                        offset: Offset(1.5, -1.5),
                                        color: Color(0xffBFA6E8)),
                                    Shadow(
                                        // topRight
                                        offset: Offset(1.5, 1.5),
                                        color: Color(0xff7E59C9)),
                                    Shadow(
                                        // topLeft
                                        offset: Offset(-1.5, 1.5),
                                        color: Color(0xff7E59C9)),
                                  ],
                                  decoration: TextDecoration.none,
                                  decorationColor: Colors.white,
                                  color: Color(0xff815CCD),
                                  fontSize: 120,
                                  fontWeight: FontWeight.w900)),
                          Text(temperatureSymbol,
                              style: GoogleFonts.roboto(
                                  shadows: [
                                    Shadow(
                                        // bottomLeft
                                        offset: Offset(-1.5, -1.5),
                                        color: Color(0xffBFA6E8)),
                                    Shadow(
                                        // bottomRight
                                        offset: Offset(1.5, -1.5),
                                        color: Color(0xff865DD3)),
                                    Shadow(
                                        // topRight
                                        offset: Offset(1.5, 1.5),
                                        color: Color(0xff865DD3)),
                                    Shadow(
                                        // topLeft
                                        offset: Offset(-1.5, 1.5),
                                        color: Color(0xff865DD3)),
                                  ],
                                  color: Color(0xff815CCD),
                                  fontSize: 40,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        today,
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                            color: Color(0xff85FFD0),
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    tomorrow,
                    style: GoogleFonts.openSans(
                        color: Color(0xffB6A5E8),
                        fontSize: 26,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.32,
              child: ListView.builder(
                  itemCount: weatherConditions.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color(0XFF9380DB),
                                Color(0XFF9380DB),
                                Color(0XFF4D27C6),
                                Color(0XFF4D27C6),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.32,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff6442C9),
                                  Color(0xff6337C2),
                                  Color(0xff4C23C3)
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    times[index],
                                    style: GoogleFonts.openSans(
                                        color: Colors.white.withOpacity(0.6),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Image.asset(
                                    weatherIcons[index],
                                    height: 44,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    weatherConditions[index],
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.openSans(
                                        color: Colors.white.withOpacity(0.7),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        temperature[index],
                                        style: GoogleFonts.openSans(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        temperatureSymbol,
                                        style: GoogleFonts.openSans(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  void handleClick(String value) {
    switch (value) {
      case 'Manage City':
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => ManageCities()));
        break;
    }
  }
}
