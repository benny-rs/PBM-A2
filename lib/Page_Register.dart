import 'package:agristore/Page_Home.dart';
import 'package:agristore/Page_Perkenalan.dart';
import 'package:flutter/material.dart';

import 'Page_Login.dart';

class Register extends StatelessWidget {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
                  decoration: BoxDecoration(
                    color: Color(0xffCEFFBC),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  height: 40,
                  width: 270,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: controller1,
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
                    "Email",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffCEFFBC),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  height: 40,
                  width: 270,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: controller2,
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
                  decoration: BoxDecoration(
                    color: Color(0xffCEFFBC),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  height: 40,
                  width: 270,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: controller3,
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
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return Home();
                      }));
                    },
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
    );
  }

  void setState(Null Function() param0) {}
}
