import 'package:flutter/material.dart';
import 'package:aplikasi_portal/item_drawer/hasil_studi.dart';
import 'package:aplikasi_portal/item_drawer/informasi_akademik.dart';
import 'package:aplikasi_portal/item_drawer/informasi_pembayaran.dart';
import 'package:aplikasi_portal/item_drawer/kalender_akademik.dart';
import 'package:aplikasi_portal/item_drawer/log_out.dart';
import 'package:aplikasi_portal/item_drawer/messages_from_rector.dart';
import 'package:aplikasi_portal/drawer/header_drawer_screen.dart';
import 'package:aplikasi_portal/item_drawer/profile.dart';
import 'package:aplikasi_portal/item_drawer/tentang.dart';
import 'package:aplikasi_portal/item_drawer/unduh_berkas.dart';

class DrawerPage extends StatefulWidget {
  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  var currentPage = DrawerSections.informasi_akademik;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.informasi_akademik) {
      container = InformasiAkademikPage();
    } else if (currentPage == DrawerSections.messages_from_rector) {
      container = MessagesFromRectorPage();
    } else if (currentPage == DrawerSections.informasi_pembayaran) {
      container = InformasiPembayaranPage();
    } else if (currentPage == DrawerSections.kalender_akademik) {
      container = KalenderAkademikPage();
    } else if (currentPage == DrawerSections.hasil_studi) {
      container = HasilStudiPage();
    } else if (currentPage == DrawerSections.profil) {
      container = ProfilePage();
    } else if (currentPage == DrawerSections.unduh_berkas) {
      container = UnduhBerkasPage();
    } else if (currentPage == DrawerSections.tentang) {
      container = TentangPage();
    } else if (currentPage == DrawerSections.log_out) {
      container = LogOutPage();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 14, 96, 163),
        title: Text(
          "Portal - UAA",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(
              1,
              "Informasi Akademik",
              Icons.perm_device_information_rounded,
              currentPage == DrawerSections.informasi_akademik ? true : false),
          menuItem(
              2,
              "Messages from Rector",
              Icons.message,
              currentPage == DrawerSections.messages_from_rector
                  ? true
                  : false),
          menuItem(
              3,
              "Informasi Pembayaran",
              Icons.money,
              currentPage == DrawerSections.informasi_pembayaran
                  ? true
                  : false),
          menuItem(4, "Kalender Akademik", Icons.date_range_rounded,
              currentPage == DrawerSections.kalender_akademik ? true : false),
          menuItem(5, "Hasil Studi", Icons.school_rounded,
              currentPage == DrawerSections.hasil_studi ? true : false),
          menuItem(6, "Profile", Icons.emoji_emotions,
              currentPage == DrawerSections.profil ? true : false),
          Divider(),
          menuItem(7, "Unduh Berkas", Icons.get_app_rounded,
              currentPage == DrawerSections.unduh_berkas ? true : false),
          menuItem(8, "Tentang", Icons.info,
              currentPage == DrawerSections.tentang ? true : false),
          menuItem(9, "Log Out", Icons.logout,
              currentPage == DrawerSections.log_out ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(
            () {
              if (id == 1) {
                currentPage = DrawerSections.informasi_akademik;
              } else if (id == 2) {
                currentPage = DrawerSections.messages_from_rector;
              } else if (id == 3) {
                currentPage = DrawerSections.informasi_pembayaran;
              } else if (id == 4) {
                currentPage = DrawerSections.kalender_akademik;
              } else if (id == 5) {
                currentPage = DrawerSections.hasil_studi;
              } else if (id == 6) {
                currentPage = DrawerSections.profil;
              } else if (id == 7) {
                currentPage = DrawerSections.unduh_berkas;
              } else if (id == 8) {
                currentPage = DrawerSections.tentang;
              } else if (id == 9) {
                currentPage = DrawerSections.log_out;
              }
            },
          );
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Nunito',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  informasi_akademik,
  messages_from_rector,
  informasi_pembayaran,
  kalender_akademik,
  hasil_studi,
  profil,
  unduh_berkas,
  tentang,
  log_out,
}
