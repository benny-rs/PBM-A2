import 'package:agristore/user.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final controlNamaLengkap = TextEditingController();
  final controlEmail = TextEditingController();
  final controlNomorHP = TextEditingController();
  final controlNomorRekening = TextEditingController();
  final controlPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color(0xFF6FA15D),
          // backgroundColor: Color.fromARGB(255, 230, 255, 223),
          title: Text(
            'Profil',
            // style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: StreamBuilder<List<Data>>(
            stream: readData(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text("Ada Kesalahan! ${snapshot.hasError}");
              } else if (snapshot.hasData) {
                final datas = snapshot.data!;

                return Column(
                  children: datas.map(buildData).toList(),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ));
  }
}

Widget buildData(Data data) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 20,
            bottom: 30,
            left: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 230, 255, 223),
                    radius: 40.0,
                    // child: Image.asset('indah'),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.NamaLengkap,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "${data.NomerHP}",
                          style: TextStyle(fontSize: 16),
                        ),
                      ])
                ],
              ),
            ],
          ),
        ),
        Center(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 5),
                    margin: EdgeInsets.fromLTRB(0, 2, 10, 5),
                    child: Text(
                      "Nama Lengkap",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 5),
                    decoration: BoxDecoration(
                      color: Color(0xffCEFFBC),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    height: 40,
                    width: 270,
                    child: Text(data.NamaLengkap),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 2, 10, 5),
                    child: Text(
                      "Email",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 5),
                    decoration: BoxDecoration(
                      color: Color(0xffCEFFBC),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    height: 40,
                    width: 270,
                    child: Text(data.Email),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 2, 10, 5),
                    child: Text(
                      "Nomor Hp",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 10, left: 5),
                      decoration: BoxDecoration(
                        color: Color(0xffCEFFBC),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      height: 40,
                      width: 270,
                      child: Text("${data.NomerHP}")),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 2, 10, 5),
                    child: Text(
                      "Password",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 5),
                    decoration: BoxDecoration(
                      color: Color(0xffCEFFBC),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    height: 40,
                    width: 270,
                    child: Text(data.Password),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
Stream<List<Data>> readData() => FirebaseFirestore.instance
    .collection("User")
    .where("Email", isEqualTo: FirebaseAuth.instance.currentUser!.email!)
    .snapshots()
    .map((snapshots) =>
        snapshots.docs.map((doc) => Data.fromJson(doc.data())).toList());
