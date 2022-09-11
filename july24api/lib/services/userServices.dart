import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:july24api/model/user.dart';

Future<List<UserModel>> getUsers() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
  var response = await http.get(url);
  var jsonData = jsonDecode(response.body);

  List<UserModel> users = [];

  for (var item in jsonData) {
    UserModel user = UserModel(
      id: item['id'],
      name: item['name'],
      username: item['username'],
      email: item['email'],
      phone: item['phone'],
      company: item['company']['bs'],
    );
    users.add(user);
  }
  // print(users);
  return users;
}

Future<List<UserModel>> searchUsers(String value) async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/users?name=$value');
  var response = await http.get(url);
  var jsonData = jsonDecode(response.body);

  List<UserModel> users = [];
  // inspect(jsonData);
  for (var item in jsonData) {
    UserModel user = UserModel(
      id: item['id'],
      name: item['name'],
      username: item['username'],
      email: item['email'],
      phone: item['phone'],
      company: item['company'],
    );

    users.add(user);
  }

  return users;
}
