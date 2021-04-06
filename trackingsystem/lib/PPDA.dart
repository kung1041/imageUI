import 'package:flutter/material.dart';
import 'package:trackingsystem/PPDAsuccess.dart';

class PPDA extends StatefulWidget {
  @override
  _PPDAState createState() => _PPDAState();
}

class _PPDAState extends State<PPDA> {
  String text =
      "แอปพลิเคชันติดตามตัวและดูแลผู้ป่วยความจำเสื่อม ได้จัดทำแบบฟอร์มยืนยันการดูข้อมูลผู้ป่วยเนื่องจากว่ามีความจำเป็นอย่างเข้มงวดเพื่อป้องกันการรั่วไหลของข้อมูลผู้ป่วย เพื่อความปลอดภัยแก่ผู้ป่วยและผู้ที่มีส่วนเกี่ยวข้องกับผู้ป่วยจึงมีความจำเป็นที่จะต้องยินยอมแบบฟอร์มนี้เพื่อเป็นการเผยแพร่ข้อมูลส่วนตัวเพื่อประโยชน์ในทางด้านการแพทย์และการรักษาเพื่อที่จะเป็นการพัฒนาแอปพลิเคชันต่อๆไป";
  String text2 = "kim";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('แบบฟอร์มยืนยันการดูข้อมูลผู้ป่วย'),
        backgroundColor: Colors.indigo[900],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            new Text(
              "\t\t\t\t\tแอปพลิเคชันติดตามตัวและดูแลผู้ป่วยความจำเสื่อม ได้จัดทำแบบฟอร์มยืนยันการดูข้อมูลผู้ป่วยเนื่องจากว่ามีความจำเป็นอย่างเข้มงวดเพื่อป้องกันการรั่วไหลของข้อมูลผู้ป่วย เพื่อความปลอดภัยแก่ผู้ป่วยและผู้ที่มีส่วนเกี่ยวข้องกับผู้ป่วยจึงมีความจำเป็นที่จะต้องยินยอมแบบฟอร์มนี้เพื่อเป็นการเผยแพร่ข้อมูลส่วนตัวเพื่อประโยชน์ในทางด้านการแพทย์และการรักษาเพื่อที่จะเป็นการพัฒนาแอปพลิเคชันต่อๆไป",
              style: new TextStyle(fontSize: 18.0),
            ),
            new Text(
              "\t\t\t\t\tข้าพเจ้าตกลงและยินยอมให้ทางผู้ดูแลเก็บข้อมูลส่วนตัวของข้าพเจ้าและเปิดเผยข้อมูลส่วนบุคคลของข้าพเจ้าเพื่อปฏิบัติตามข้อกำหนดข้างต้น ในกรณีที่ข้าพเจ้าได้ให้ข้อมูลส่วนบุคคลที่เกี่ยวกับบุคคลอื่นๆ ข้าพเจ้าขอยืนยันว่าบุคคลเหล่านั้นได้ให้ความยินยอมแก่ข้าพเจ้าในการเปิดเผยข้อมูลส่วนบุคคลแก่ทางโรงพยาบาลและที่อยู่อาศัย",
              style: new TextStyle(fontSize: 18.0),
            ),
            // new Text(
            //   "\t\t\t\t\tหมายเหตุ: หากท่านไม่ให้ความยินยอม ท่านจะไม่สามารถดูข้อมูลประวัติส่วนตัวของท่านได้",
            //   style: new TextStyle(fontSize: 18.0),
            // ),
            Text.rich(
              TextSpan(
                text: "***หมายเหตุ:",
                style: new TextStyle(
                    fontSize: 18.0,
                    decoration: TextDecoration.underline,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        " หากท่านไม่ให้ความยินยอม ท่านจะไม่สามารถดูข้อมูลประวัติส่วนตัวของท่านได้",
                  ),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PPDAsuccess()));
              },
              child: const Text(
                'ยินยอม',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              color: Colors.indigo[900],

              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              // elevation: 20,
            ),
            TextButton(
                child: Text("ไม่ยินยอม".toUpperCase(),
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(8)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.indigo[900]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.indigo[900])))),
                onPressed: () => Navigator.pop(context)),
          ],
        ),
      ),
    );
  }
}
