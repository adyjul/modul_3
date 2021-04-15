import 'dart:convert';
import 'dart:async';
import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as http;
import 'package:cobamvvm/Model/dataModel.dart';

class HomeProvider extends BaseViewModel{
  String urlAPI = 'https://reqres.in/api/users/2';

  User _data;
  get data => _data;

  Future inisial() async {
    setBusy(true);
    var response = await http.get(urlAPI);
    _data = User.fromJson(json.decode(response.body));
    print(_data.data.avatar);
    notifyListeners();
    setBusy(false);
  }
}