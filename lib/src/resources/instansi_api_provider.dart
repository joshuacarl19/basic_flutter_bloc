import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import '../models/data_instansi.dart';

class InstansiApiProvider {
  Client _client = Client();
  final _apiUrl = 'http://dev.farizdotid.com/api/instansi/daftar_instansi/Kota Jakarta Selatan';

  Future<DataInstansi> getAllDataInstansi() async {
    print("API Hit");
    final response = await _client.get(_apiUrl);
    print(response.body.toString());
    if(response.statusCode == 200) {
      return DataInstansi.fromJson(json.decode(response.body));
    }else {
      throw Exception('Error fetching data');
    }
  }

}