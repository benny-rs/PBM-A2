import 'package:agristore/Home/Page_Home.dart';
import 'package:agristore/Page_Register.dart';
import 'package:agristore/Page_register1.dart';
import 'package:agristore/navbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.4,
                // width: 100,
                // height: 100,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Logo.png'),
                      fit: BoxFit.fill),
                )
                // child: Image(image: AssetImage("assets/images/Logo.png")),
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
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: controller1,
                  ),
                  // child: TextField(image: AssetImage("assets/images/profil.png")),
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
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: controller2,
                  ),
                  // child: TextField(image: AssetImage("assets/images/profil.png")),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () => submit(
                          context,
                          controller1.text,
                          controller2.text,
                        ),
                    // onPressed: LOGIN,
                    child: Text('Login',
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
                          return Register_Page();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'create account',
                    style: TextStyle(
                        fontSize: 20,
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

  void submit(BuildContext context, String email, String password) {
    if (email.isEmpty || password.isEmpty) {
      final snackBar = SnackBar(
        duration: const Duration(seconds: 5),
        content: Text("Email dan password harus diisi"),
        backgroundColor: Colors.red,
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    } else {
      LOGIN();
    }
  }

  void LOGIN() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: controller1.text.trim(), password: controller2.text.trim())
          .then((uid) => {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NavBar();
                }))
              });
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}
