import 'package:agristore/Home/Page_Home.dart';
import 'package:agristore/page_login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'user.dart';

class Register_Page extends StatefulWidget {
  const Register_Page({Key? key}) : super(key: key);

  @override
  State<Register_Page> createState() => _Register_PageState();
}

class _Register_PageState extends State<Register_Page> {
  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  final controlNamaLengkap = TextEditingController();
  final controlEmail = TextEditingController();
  final controlNomorHP = TextEditingController();
  final controlPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 60),
              const Text(
                'REGISTER',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const Text('Sign Up For Free',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
              const SizedBox(height: 60),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 2, 10, 5),
                    child: Text(
                      "Nama Lengkap",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffCEFFBC),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    height: 40,
                    width: 270,
                    child: TextField(
                        // textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Nama Lengkap",
                          icon: Icon(
                            Icons.person,
                            color: Colors.green,
                          ),
                        ),
                        controller: controlNamaLengkap),
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
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffCEFFBC),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    height: 40,
                    width: 270,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        icon: Icon(
                          Icons.email,
                          color: Colors.green,
                        ),
                      ),
                      controller: controlEmail,
                    ),
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
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffCEFFBC),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    height: 40,
                    width: 270,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Nomor Hp",
                        icon: Icon(
                          Icons.call,
                          color: Colors.green,
                        ),
                      ),
                      controller: controlNomorHP,
                    ),
                  ),
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
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffCEFFBC),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    height: 40,
                    width: 270,
                    child: TextField(
                      obscureText: _isHidePassword,
                      autofocus: false,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: GestureDetector(
                          onTap: () {
                            _togglePasswordVisibility();
                          },
                          child: Icon(
                            _isHidePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: _isHidePassword ? Colors.grey : Colors.blue,
                          ),
                        ),
                        isDense: true,
                        icon: Icon(
                          Icons.lock,
                          color: Colors.green,
                        ),
                      ),
                      controller: controlPassword,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () => submit(
                            context,
                            controlNamaLengkap.text,
                            controlEmail.text,
                            controlNomorHP.text,
                            controlPassword.text,
                          ),
                      // onPressed: CreateUser,
                      child: Text('Create',
                          style: TextStyle(fontSize: 16, color: Colors.black))),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) {
                            return const Login();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Already have an account?',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void submit(BuildContext context, String NamaLengkap, String Email,
      String NomorHp, String Password) {
    if (NamaLengkap.isEmpty ||
        Email.isEmpty ||
        NomorHp.isEmpty ||
        Password.isEmpty) {
      final snackBar = SnackBar(
        duration: const Duration(seconds: 5),
        content: Text("Lengkapi Data"),
        backgroundColor: Colors.red,
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    } else {
      CreateUser();
    }
  }

  void CreateUser() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: controlEmail.text.trim(),
              password: controlPassword.text.trim())
          .then((uid) => {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Login();
                }))
              });
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    final data = Data(
        NamaLengkap: controlNamaLengkap.text,
        NomerHP: int.parse(controlNomorHP.text),
        Email: controlEmail.text,
        Password: controlPassword.text);
    createData(data);
  }
}

Future createData(Data data) async {
  final docData = FirebaseFirestore.instance.collection("User").doc();
  data.ID = docData.id;
  final json = data.toJson();
  docData.set(json);
}
