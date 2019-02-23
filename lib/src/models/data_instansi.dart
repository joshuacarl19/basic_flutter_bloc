class DataInstansi {
  bool _error;
  String _message;
  List<DaftarInstansi> _daftarInstansi;

  DataInstansi(
      {bool error, String message, List<DaftarInstansi> daftarInstansi}) {
    this._error = error;
    this._message = message;
    this._daftarInstansi = daftarInstansi;
  }

  bool get error => _error;
  String get message => _message;
  List<DaftarInstansi> get daftarInstansi => _daftarInstansi;

  DataInstansi.fromJson(Map<String, dynamic> json) {
    _error = json['error'];
    _message = json['message'];
    if (json['daftar_instansi'] != null) {
      _daftarInstansi = new List<DaftarInstansi>();
      json['daftar_instansi'].forEach((v) {
        _daftarInstansi.add(new DaftarInstansi.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this._error;
    data['message'] = this._message;
    if (this._daftarInstansi != null) {
      data['daftar_instansi'] =
          this._daftarInstansi.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DaftarInstansi {
  String _id;
  String _idKabupaten;
  String _namaKabupaten;
  String _jenisInstansi;
  String _namaInstansi;
  String _nomorInstansi;
  String _alamatInstansi;
  String _lat;
  String _long;

  DaftarInstansi(
      {String id,
      String idKabupaten,
      String namaKabupaten,
      String jenisInstansi,
      String namaInstansi,
      String nomorInstansi,
      String alamatInstansi,
      String lat,
      String long}) {
    this._id = id;
    this._idKabupaten = idKabupaten;
    this._namaKabupaten = namaKabupaten;
    this._jenisInstansi = jenisInstansi;
    this._namaInstansi = namaInstansi;
    this._nomorInstansi = nomorInstansi;
    this._alamatInstansi = alamatInstansi;
    this._lat = lat;
    this._long = long;
  }

  String get id => _id;
  String get idKabupaten => _idKabupaten;
  String get namaKabupaten => _namaKabupaten;
  String get jenisInstansi => _jenisInstansi;
  String get namaInstansi => _namaInstansi;
  String get nomorInstansi => _nomorInstansi;
  String get alamatInstansi => _alamatInstansi;
  String get lat => _lat;
  String get long => _long;

  DaftarInstansi.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _idKabupaten = json['id_kabupaten'];
    _namaKabupaten = json['nama_kabupaten'];
    _jenisInstansi = json['jenis_instansi'];
    _namaInstansi = json['nama_instansi'];
    _nomorInstansi = json['nomor_instansi'];
    _alamatInstansi = json['alamat_instansi'];
    _lat = json['lat_'];
    _long = json['long_'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['id_kabupaten'] = this._idKabupaten;
    data['nama_kabupaten'] = this._namaKabupaten;
    data['jenis_instansi'] = this._jenisInstansi;
    data['nama_instansi'] = this._namaInstansi;
    data['nomor_instansi'] = this._nomorInstansi;
    data['alamat_instansi'] = this._alamatInstansi;
    data['lat_'] = this._lat;
    data['long_'] = this._long;
    return data;
  }
}