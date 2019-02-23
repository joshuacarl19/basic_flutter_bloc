import 'dart:async';
import '../models/data_instansi.dart';
import 'instansi_api_provider.dart';

class Repository {
  final instansiApiProvider = InstansiApiProvider();

  Future<DataInstansi> getAllInstansi() => instansiApiProvider.getAllDataInstansi();
}