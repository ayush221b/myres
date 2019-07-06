import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:myres/app/model/restaurant.dart';

class NetworkService extends ChangeNotifier {
  List<Restaurant> _restaurants = [];

  List<Restaurant> get restaurants => _restaurants;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future getRestaurantsFromApi({@required String query}) async {
    _isLoading = true;
    notifyListeners();

    String baseurl = 'https://developers.zomato.com/api/v2.1/search';

    String params = '?q=$query&lat=13.0827&lon=80.2707&sort=cost&order=asc';

    Map<String, String> header = {
      'user-key': 'bd202daae7de5dfbcebbc269646846d3'
    };

    http.Response response = await http.get(baseurl + params, headers: header);

    if (response.statusCode != 200) {
      _isLoading = false;
      notifyListeners();
      return;
    }

    Map responseBody = json.decode(response.body);
    print(responseBody);
  }
}
