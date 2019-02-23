import 'package:rxdart/rxdart.dart';
import '../resources/repository.dart';
import '../models/data_instansi.dart';

class InstansiBloc {
  final _repository = Repository();
  final _instansiFetcher = PublishSubject<DataInstansi>();

  Observable<DataInstansi> get allInstansi => _instansiFetcher.stream;

  fetchAllInstansi() async {
    DataInstansi _dataInstansi = await _repository.getAllInstansi();
    _instansiFetcher.sink.add(_dataInstansi);
  }

  dispose(){
    _instansiFetcher.close();
  }
  
}

final bloc = InstansiBloc();