import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String flag;
  String url;
  late String bgImage;
  late String date;
  late String day;
  late DateTime now;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    // make request
    var uri = Uri.parse('http://worldtimeapi.org/api/timezone/$url');
    Response response = await get(uri);
    Map data = jsonDecode(response.body);

    // get propeties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'];
    now = DateTime.parse(datetime);

    int offsetHour = int.parse(offset.substring(1, 3));
    int offsetMinute = int.parse(offset.substring(4, 6));

    if (offset[0] == '+') {
      now = now.add(Duration(hours: offsetHour, minutes: offsetMinute));
    } else if (offset[0] == '-') {
      now = now.subtract(Duration(hours: offsetHour, minutes: offsetMinute));
    }

    date = datetime.toString().substring(0, 10);

    day = data['day_of_week'].toString();

    switch (day) {
      case ('0'):
        day = 'Sunday';
        break;
      case ('1'):
        day = 'Monday';
        break;
      case ('2'):
        day = 'Tuesday';
        break;
      case ('3'):
        day = 'Wednesday';
        break;
      case ('4'):
        day = 'Thursday';
        break;
      case ('5'):
        day = 'Friday';
        break;
      case ('6'):
        day = 'Saturday';
        break;
    }

    if (now.hour >= 23) {
      bgImage = 'night-night.png';
    } else if (now.hour >= 19) {
      bgImage = 'night.png';
    } else if (now.hour >= 17) {
      bgImage = 'eve.png';
    } else if (now.hour >= 12) {
      bgImage = 'after_noon.png';
    } else if (now.hour >= 10) {
      bgImage = 'noon.png';
    } else if (now.hour >= 8) {
      bgImage = 'morning.png';
    } else if (now.hour >= 6) {
      bgImage = 'day.png';
    } else if (now.hour >= 0) {
      bgImage = 'night-night.png';
    }
  }
}
