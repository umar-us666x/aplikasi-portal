import 'package:flutter/material.dart';
import 'package:aplikasi_portal/screen/popup_screen.dart';

class InformasiPembayaranPage extends StatefulWidget {
  const InformasiPembayaranPage({super.key});

  @override
  State<InformasiPembayaranPage> createState() =>
      _InformasiPembayaranPageState();
}

class _InformasiPembayaranPageState extends State<InformasiPembayaranPage> {
  String dropdownValue =
      'TAHUN AKADEMIK 2022/2023 GENAP (TAHUN AKADEMIK SAAT INI)';

  List<Map> categories = [
    {"name": "TABUNGAN\nRp. 151.500", "isChecked": false},
    {"name": "QURBAN\nRp. 81.500", "isChecked": false},
    {"name": "ZAKAT FITRAH\nRp. 66.500", "isChecked": false},
    {"name": "ALTC\nRp. 326.500", "isChecked": false},
    {"name": "BANDWITH\nRp. 201.500", "isChecked": false},
    {"name": "SERAGAM\nRp. 451.500", "isChecked": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          DropdownButtonFormField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2),
              ),
              filled: true,
              fillColor: Colors.grey[200],
            ),
            dropdownColor: Colors.grey[200],
            value: dropdownValue,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>[
              'TAHUN AKADEMIK 2022/2023 GENAP (TAHUN AKADEMIK SAAT INI)',
              'TAHUN AKADEMIK 2022/2023 GANJIL',
              'TAHUN AKADEMIK 2021/2022 GENAP',
              'TAHUN AKADEMIK 2021/2022 GANJIL',
              'TAHUN AKADEMIK 2020/2021 GENAP',
              'TAHUN AKADEMIK 2020/2021 GANJIL',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(fontSize: 10),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              SizedBox(height: 10),
              Column(
                children: categories.map(
                  (favorite) {
                    return CheckboxListTile(
                      activeColor: Color.fromARGB(255, 14, 96, 163),
                      checkboxShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      value: favorite["isChecked"],
                      title: Text(favorite["name"]),
                      onChanged: (val) {
                        setState(
                          () {
                            favorite["isChecked"] = val;
                          },
                        );
                      },
                    );
                  },
                ).toList(),
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Wrap(
                children: categories.map(
                  (favorite) {
                    if (favorite["isChecked"] == true) {
                      return Card(
                        elevation: 3,
                        color: Color.fromARGB(255, 14, 96, 163),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                favorite["name"],
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(
                                    () {
                                      favorite["isChecked"] =
                                          !favorite["isChecked"];
                                    },
                                  );
                                },
                                child: Icon(
                                  Icons.delete_forever_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                    return Container();
                  },
                ).toList(),
              ),
              Container(
                constraints: BoxConstraints.expand(
                  height: 50,
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => PopUp(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 14, 96, 163),
                    ),
                    child: Text(
                      "Bayar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
