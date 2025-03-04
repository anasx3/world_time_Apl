// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_world_time_app_final/classes/getdata-class.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List allCountries = [
    // AllCountries(
    //     link: 'Asia/Riyadh', countryName: 'Egypt - Cairo', flag: 'egypt.png'),
    // AllCountries(
    //     link: 'Africa/Tunis',
    //     countryName: 'Tunisia - Tunis',
    //     flag: 'tunisia.png'),
    AllCountries(
        link: 'Asia/Riyadh',
        countryName: '	Saudi Arabia - Riyadh',
        flag: 'sa.png'),
    // AllCountries(
    //     link: 'Africa/Algiers',
    //     countryName: 'Algeria - Algiers',
    //     flag: 'algeria.png'),
    // AllCountries(
    //     link: 'Australia/Sydney',
    //     countryName: 'Australia - Sydney',
    //     flag: 'australia.png'),
    AllCountries(
        link: 'America/Toronto',
        countryName: 'Canada - Toronto',
        flag: 'canada.png'),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 191, 191, 199),
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(146, 12, 16, 49),
        title: Text(
          "Choose Location",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: SizedBox(
        child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: allCountries.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  onTap: () async {
                    AllCountries clickedCountry = allCountries[index];

                    await clickedCountry.getData();
                    Navigator.pop(context, {
                      "time": clickedCountry.timeNow,
                      "location": clickedCountry.timeZone,
                      "isDayTime": clickedCountry.isDayTime
                    });
                  },
                  title: Text(
                    allCountries[index].countryName,
                    style: TextStyle(fontSize: 22),
                  ),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/${allCountries[index].flag}"),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
