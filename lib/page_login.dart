import 'package:agristore/Page_Home.dart';
import 'package:agristore/Page_Register.dart';
import 'package:agristore/navbar.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                      "Username",
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
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return NavBar();
                        }));
                      },
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
                            return Register();
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
      ),
    );
  }
}
