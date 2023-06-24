import 'package:flutter/material.dart';

class PopUp extends StatefulWidget {
  PopUp({Key? key}) : super(key: key);

  @override
  State<PopUp> createState() => _PopUpState();
}

class _PopUpState extends State<PopUp> {
  // define a list of options for the dropdown
  final List<String> _bni = [
    "1. Masukkan kartu ATM.",
    "2. Masukkan 6 digit PIN ATM.",
    "3. Pilih menu Transaksi Lainnya > Transfer > Antar Bank Online.",
    "4. Masukkan Kode Bank dan Nomor Virtual Account tujuan.",
    "5. Pastikan nominal yang muncul di layar sudah sesuai dengan nominal pembelianmu.",
    "6. Pilih OK atau YES."
  ];
  // ignore: unused_field
  final List<String> _bri = [
    "1. Lakukan pembayaran melalui ATM Bank BRI.",
    "2. Pilih menu Transaksi Lain.",
    "3. Pilih menu Pembayaran.",
    "4. Pilih menu Lainnya.",
    "5. Pilih menu BRIVA.",
  ];

  final List<String> _bca = [
    "1. Masukkan User ID dan PIN.",
    "2. Pilih Transfer Dana > Transfer ke BCA Virtual Account.",
    "3. Masukkan nomor BCA Virtual Account (80777) dan Nomor HP yang terdaftar di akun DTKP Anda.",
    "4. Masukkan jumlah yang ingin dibayarkan.",
    "5. Validasi pembayaran.",
  ];

  final List<String> _btn = [
    "1. Akses BTN Mobile Banking dari handphone kemudian masukkan user ID dan password.",
    "2. Pilih menu “Pembayaran.",
    "3. Pilih menu “Virtual Account” kemudian pilih rekening debet.",
    "4. Masukkan nomor Virtual Account Anda (contoh: 903107822105074011).",
    "5. Tekan Kirim",
  ];

  String? _selectedbni, _selectedbri, _selectedbca, _selectedbtn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Portal - UAA",
          style: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 14, 96, 163),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              width: 400,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 138, 144, 150),
                    Color.fromARGB(255, 227, 232, 233)
                  ],
                ),
                image: const DecorationImage(
                  image: AssetImage('assets/logo/mastercard.png'),
                  fit: BoxFit.contain,
                ),
              ),
              child: Center(
                child: Text(
                  "8241002201150001",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              width: 400,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 14, 96, 163),
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButton<String>(
                value: _selectedbni,
                onChanged: (value) {
                  setState(
                    () {
                      _selectedbni = value;
                    },
                  );
                },
                hint: Center(
                  child: Text(
                    'Cara membayar menggunakan BNI',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // Hide the default underline
                underline: Container(),
                // set the color of the dropdown menu
                dropdownColor: Colors.grey[200],

                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                isExpanded: true,

                // The list of options
                items: _bni
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            e,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    )
                    .toList(),

                // Customize the selected item
                selectedItemBuilder: (BuildContext context) => _bni
                    .map(
                      (e) => Center(
                        child: Text(
                          e,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.amber,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              width: 400,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 14, 96, 163),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton<String>(
                value: _selectedbri,
                onChanged: (value) {
                  setState(
                    () {
                      _selectedbri = value;
                    },
                  );
                },
                hint: Center(
                  child: Text(
                    'Cara membayar menggunakan BRI',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // Hide the default underline
                underline: Container(),
                // set the color of the dropdown menu
                dropdownColor: Colors.grey[200],
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                isExpanded: true,

                // The list of options
                items: _bri
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            e,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    )
                    .toList(),

                // Customize the selected item
                selectedItemBuilder: (BuildContext context) => _bri
                    .map(
                      (e) => Center(
                        child: Text(
                          e,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.amber,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              width: 400,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 14, 96, 163),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton<String>(
                value: _selectedbca,
                onChanged: (value) {
                  setState(
                    () {
                      _selectedbca = value;
                    },
                  );
                },
                hint: Center(
                  child: Text(
                    'Cara membayar menggunakan BCA',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // Hide the default underline
                underline: Container(),
                // set the color of the dropdown menu
                dropdownColor: Colors.grey[200],
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                isExpanded: true,

                // The list of options
                items: _bca
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            e,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    )
                    .toList(),

                // Customize the selected item
                selectedItemBuilder: (BuildContext context) => _bca
                    .map(
                      (e) => Center(
                        child: Text(
                          e,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.amber,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              width: 400,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 14, 96, 163),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton<String>(
                value: _selectedbtn,
                onChanged: (value) {
                  setState(
                    () {
                      _selectedbtn = value;
                    },
                  );
                },
                hint: Center(
                  child: Text(
                    'Cara membayar menggunakan BTN',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // Hide the default underline
                underline: Container(),
                // set the color of the dropdown menu
                dropdownColor: Colors.grey[200],
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                isExpanded: true,

                // The list of options
                items: _btn
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            e,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    )
                    .toList(),

                // Customize the selected item
                selectedItemBuilder: (BuildContext context) => _btn
                    .map(
                      (e) => Center(
                        child: Text(
                          e,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.amber,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
