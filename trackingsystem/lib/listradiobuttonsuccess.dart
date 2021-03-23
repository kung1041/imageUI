import 'package:flutter/material.dart';
import 'package:trackingsystem/models/gendermodel.dart';
import 'package:trackingsystem/models/genderservicemodels.dart';

class listradiobuttonsuccess extends StatefulWidget {
  @override
  _listradiobuttonsuccessState createState() => _listradiobuttonsuccessState();
}

class _listradiobuttonsuccessState extends State<listradiobuttonsuccess> {
  List<gendermodel> _genders;
  void initState() {
    super.initState();
    genderServices.getgenders().then((value) {
      _genders = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('listradiobutton'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
            itemCount: null == _genders ? 0 : _genders.length,
            itemBuilder: (context, index) {
              gendermodel gender = _genders[index];
              return Padding(
                padding: EdgeInsets.only(top: 1.0, left: 16.0, right: 16.0),
                child: Card(
                  elevation: 8.0,
                  child: SingleChildScrollView(
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('id'),
                          Text(gender.id),
                          Radio(
                              value: 'ชาย',
                              groupValue: gender.chooseGender,
                              onChanged: (value) {
                                setState(() {
                                  gender.chooseGender = value;
                                });
                              }),
                          Text('ชาย'),
                          Radio(
                              value: 'หญิง',
                              groupValue: _genders[index].chooseGender,
                              onChanged: (value) {
                                setState(() {
                                  _genders[index].chooseGender = value;
                                });
                              }),
                          Text('หญิง'),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
