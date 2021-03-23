import 'package:flutter/material.dart';
import 'package:trackingsystem/listradiobuttonsuccess.dart';
import 'package:trackingsystem/utillity/my_style.dart';
import 'package:trackingsystem/utillity/normal_dialog.dart';
import 'package:dio/dio.dart';

class radiobuttonpage extends StatefulWidget {
  @override
  _radiobuttonpageState createState() => _radiobuttonpageState();
}

class _radiobuttonpageState extends State<radiobuttonpage> {
  String chooseGender; // สำคัญมาก ใช้ในการระบุเพศ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้า RadioButton'),
      ),
      body: ListView(
        padding: EdgeInsets.all(30.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MyStyle().showTitle('Gender'),
              MyStyle().mySizebox(),
              genderRadio(),
              registerButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget genderRadio() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 250.0,
            //ถ้ามีการใช้ container ต้อง มี widget ตลอดด้วย
            child: Row(
              children: <Widget>[
                Radio(
                  value: 'ชาย',
                  groupValue: chooseGender,
                  onChanged: (value) {
                    setState(() {
                      chooseGender = value;
                    });
                  },
                ),
                Text(
                  'ชาย',
                  style: TextStyle(color: Colors.blue),
                ),
                Radio(
                  value: 'หญิง',
                  groupValue: chooseGender,
                  onChanged: (value) {
                    setState(() {
                      chooseGender = value;
                    });
                  },
                ),
                Text('หญิง'),
              ],
            ),
          ),
        ],
      );
  Widget registerButton() => Container(
        width: 250.0,
        child: RaisedButton(
          color: Colors.green,
          onPressed: () {
            print('chooseGender = $chooseGender');
            if (chooseGender == null || chooseGender.isEmpty) {
              print('Have Space');
              normalDialog(context, 'โปรคระบุเพศ');
            } else {
              submitgenderThread();
            }
          },
          child: Text(
            'Submit',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
  Future<Null> submitgenderThread() async {
    String url =
        'http://192.168.1.3:8080/ProjectFlutter/addgender.php?isAdd=true&chooseGender=$chooseGender';

    try {
      Response response = await Dio().get(url);
      print('res = $response');

      if (response.toString() == 'true') {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => listradiobuttonsuccess()));
      } else {
        normalDialog(context, 'ไม่สามารถ ลงได้');
      }
    } catch (e) {}
  }
}
