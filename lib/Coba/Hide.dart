import 'package:flutter/material.dart';

class Hide extends StatefulWidget {
  const Hide({Key? key}) : super(key: key);

  @override
  State<Hide> createState() => _HideState();
}

class _HideState extends State<Hide> {
  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Password Visibility"),
      ),
      body: Column(
        children: [
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
                labelText: "Email",
                icon: Icon(
                  Icons.email,
                  color: Colors.green,
                ),
              ),
              onChanged: (value) {
                setState(() {});
              },
            ),
            // child: TextField(image: AssetImage("assets/images/profil.png")),
          ),
          Container(
            padding: EdgeInsets.all(24.0),
            child: _buildPasswordField(),
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      obscureText: _isHidePassword,
      autofocus: false,
      initialValue: '',
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        labelText: 'Password',
        suffixIcon: GestureDetector(
          onTap: () {
            _togglePasswordVisibility();
          },
          child: Icon(
            _isHidePassword ? Icons.visibility_off : Icons.visibility,
            color: _isHidePassword ? Colors.grey : Colors.blue,
          ),
        ),
        isDense: true,
      ),
    );
  }
}
