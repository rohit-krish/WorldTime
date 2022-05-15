// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Johannesburg', location: 'Johanssenburg', flag: 'johannesburg.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),

    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/Jamaica', location: 'Jamaica', flag: 'jamaica.png'),
    WorldTime(url: 'America/Mexico_City', location: 'Mexico', flag: 'mexico.webp'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'America/Panama', location: 'Panama', flag: 'panama.png'),
    WorldTime(url: 'America/Santiago', location: 'Santiago', flag: 'santiago.png'),

    WorldTime(url: 'Asia/Bangkok', location: 'Bangkok', flag: 'bangkok.png'),
    WorldTime(url: 'Asia/Colombo', location: 'Colombo', flag: 'sri-lanka.png'),
    WorldTime(url: 'Asia/Dhaka', location: 'Dhaka', flag: 'dhaka.gif'),
    WorldTime(url: 'Asia/Dubai', location: 'Dubai', flag: 'uae.webp'),
    WorldTime(url: 'Asia/Hong_Kong', location: 'Hong Kong', flag: 'hongkong.png'),
    WorldTime(url: 'Asia/Jerusalem', location: 'Jerusalem', flag: 'jerusalem.png'),
    WorldTime(url: 'Asia/Kabul', location: 'Kabul', flag: 'afghanistan.png'),
    WorldTime(url: 'Asia/Karachi', location: 'Karachi', flag: 'pakistan.webp'),
    WorldTime(url: 'Asia/Kathmandu', location: 'Kathmandu', flag: 'kathmandu.webp'),
    WorldTime(url: 'Asia/kolkata', location: 'India', flag: 'india.png'),
    WorldTime(url: 'Asia/Qatar', location: 'Qatar', flag: 'qatar.webp'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Singapore', location: 'Singapore', flag: 'singapore.png'),
    WorldTime(url: 'Asia/Tokyo', location: 'Tokyo', flag: 'tokyo.png'),
    WorldTime(url: 'Asia/Bermuda', location: 'Bermuda', flag: 'bermuda.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),

    WorldTime(url: 'Australia/Sydney', location: 'Sydney', flag: 'australia.png'),

    WorldTime(url: 'Europe/Amsterdam', location: 'Amsterdam', flag: 'amsterdam.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'berlin.png'),
    WorldTime(url: 'Europe/Istanbul', location: 'Istanbul', flag: 'turkey.webp'),
    WorldTime(url: 'Europe/Kiev', location: 'Kiev', flag: 'kiev.png'),
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Moscow', location: 'Moscow', flag: 'moscow.png'),
    WorldTime(url: 'Europe/Oslo', location: 'Oslo', flag: 'oslo.png'),
    WorldTime(url: 'Europe/Paris', location: 'Paris', flag: 'paris.png'),
    WorldTime(url: 'Europe/Rome', location: 'Rome', flag: 'rome.jpg'),
  ];

  List<WorldTime> locationsClone = [
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Johannesburg', location: 'Johanssenburg', flag: 'johannesburg.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),

    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/Jamaica', location: 'Jamaica', flag: 'jamaica.png'),
    WorldTime(url: 'America/Mexico_City', location: 'Mexico', flag: 'mexico.webp'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'America/Panama', location: 'Panama', flag: 'panama.png'),
    WorldTime(url: 'America/Santiago', location: 'Santiago', flag: 'santiago.png'),

    WorldTime(url: 'Asia/Bangkok', location: 'Bangkok', flag: 'bangkok.png'),
    WorldTime(url: 'Asia/Colombo', location: 'Colombo', flag: 'sri-lanka.png'),
    WorldTime(url: 'Asia/Dhaka', location: 'Dhaka', flag: 'dhaka.gif'),
    WorldTime(url: 'Asia/Dubai', location: 'Dubai', flag: 'uae.webp'),
    WorldTime(url: 'Asia/Hong_Kong', location: 'Hong Kong', flag: 'hongkong.png'),
    WorldTime(url: 'Asia/Jerusalem', location: 'Jerusalem', flag: 'jerusalem.png'),
    WorldTime(url: 'Asia/Kabul', location: 'Kabul', flag: 'afghanistan.png'),
    WorldTime(url: 'Asia/Karachi', location: 'Karachi', flag: 'pakistan.webp'),
    WorldTime(url: 'Asia/Kathmandu', location: 'Kathmandu', flag: 'kathmandu.webp'),
    WorldTime(url: 'Asia/kolkata', location: 'India', flag: 'india.png'),
    WorldTime(url: 'Asia/Qatar', location: 'Qatar', flag: 'qatar.webp'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Singapore', location: 'Singapore', flag: 'singapore.png'),
    WorldTime(url: 'Asia/Tokyo', location: 'Tokyo', flag: 'tokyo.png'),
    WorldTime(url: 'Asia/Bermuda', location: 'Bermuda', flag: 'bermuda.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),

    WorldTime(url: 'Australia/Sydney', location: 'Sydney', flag: 'australia.png'),

    WorldTime(url: 'Europe/Amsterdam', location: 'Amsterdam', flag: 'amsterdam.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'berlin.png'),
    WorldTime(url: 'Europe/Istanbul', location: 'Istanbul', flag: 'turkey.webp'),
    WorldTime(url: 'Europe/Kiev', location: 'Kiev', flag: 'kiev.png'),
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Moscow', location: 'Moscow', flag: 'moscow.png'),
    WorldTime(url: 'Europe/Oslo', location: 'Oslo', flag: 'oslo.png'),
    WorldTime(url: 'Europe/Paris', location: 'Paris', flag: 'paris.png'),
    WorldTime(url: 'Europe/Rome', location: 'Rome', flag: 'rome.jpg'),
  ];
  
  
  _updateTime(index) async {
    WorldTime instance = locationsClone[index];
    await instance.getTime();

    // navigate to home screen

    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'now': instance.now,
      'bgImage': instance.bgImage,
      'date': instance.date,
      'url': instance.url,
      'day': instance.day,
      'load_pref': true
    });
  }

  _updateList(String value){
    // locationsClone = [...locations];

    setState(() {
      locationsClone = locations
          .where((element) =>
              element.location.toLowerCase().contains(value.toLowerCase()))
          .toList();
      // print(locationsClone);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Choose Location',style: TextStyle(fontFamily: 'Merienda'),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 23, 45, 84),
        elevation: 1,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              onChanged: (value) => _updateList(value),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                // focusedBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(8),
                //   borderSide: BorderSide(color: Color.fromARGB(255, 23, 45, 84))
                // ),
                labelText: 'Search here',
                helperText: 'Not case sensitive!',
                prefixIcon: Icon(Icons.search)
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: locationsClone.isEmpty
                ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'No Results Found:(',
                      style: TextStyle(fontSize: 20,fontFamily: 'Merienda'),
                    ),
                    Text(
                      'Search country rather Continent',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                )
                : ListView.builder(
                    itemCount: locationsClone.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                        child: Card(
                          elevation: 1,
                          child: ListTile(
                            onTap: () {
                              _updateTime(index);
                            },
                            title: Text(locationsClone[index].location),
                            subtitle: Text(
                                '${locationsClone[index].location}/${locationsClone[index].url.substring(0, locationsClone[index].url.indexOf('/'))}'),
                            leading: CircleAvatar(
                              backgroundImage:
                                  // AssetImage('assets/flags/${locationsClone[index].flag}'),
                            AssetImage('assets/flags/${locationsClone[index].flag}'),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );

  }
}

/* 

initState()
  - called only once when the widget is created

Build()
  - builds the widget tree
  - a build is triggered every time we call setState()

Dispose()
  - triggered when the widget on the state obj is completely removed

*/