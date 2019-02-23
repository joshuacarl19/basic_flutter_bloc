import 'package:flutter/material.dart';
import '../models/data_instansi.dart';
import '../blocs/instansi_blocs.dart';

class InstansiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bloc.fetchAllInstansi();
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Instansi Pemerintahan'),
      ),
      body: StreamBuilder(
        stream: bloc.allInstansi,
        builder: (context, AsyncSnapshot<DataInstansi> snapshot) {
          if(snapshot.hasData) {
            return cardList(snapshot);
          }else {
            return Text(snapshot.error.toString());
          }

        },
      ),
    );
  }

  Widget cardList (AsyncSnapshot<DataInstansi> snapshot) {
    return ListView.builder(
      itemCount: snapshot.data.daftarInstansi.length,
      itemBuilder: (BuildContext context, int index) {
        return Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  title: Text(snapshot.data.daftarInstansi[index].namaInstansi),
                  subtitle: Text(snapshot.data.daftarInstansi[index].jenisInstansi),
                )
              ],
            ),
          ),
        );
      },
    );
  } 

}