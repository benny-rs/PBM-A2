import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'dart:html';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class camera extends StatefulWidget {
  const camera({Key? key}) : super(key: key);

  @override
  State<camera> createState() => _cameraState();
}

class _cameraState extends State<camera> {
  File? image;
  Future pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
  }

  Future pickCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
  }

  TextEditingController NoteUlasan = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(19, 44, 44, 44),
      appBar: AppBar(
        backgroundColor: const Color(0xFF6FA15D),
        title: Text('Ulasan'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * .35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xFF6FA15D),
            ),
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    //1) container utk gambar
                    Container(
                      // margin: EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width * .2,
                      height: MediaQuery.of(context).size.height * .11,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/images/Logo.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Nama",
                      style: GoogleFonts.openSans(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                      child: Text("Berikan Ulasanmu",
                          style: TextStyle(fontSize: 20)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                      // width: MediaQuery.of(context).size.width * 1,
                      // height: MediaQuery.of(context).size.height * .1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: TextField(
                        strutStyle: StrutStyle(height: 5),
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        onChanged: (value) {
                          setState(() {});
                        },
                        controller: NoteUlasan,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF6FA15D)),
                  ),
                  onPressed: () {
                    pickCamera();
                  },
                  child: Text(
                    "pick from camera",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF6FA15D)),
                  ),
                  onPressed: () {
                    pickImage();
                  },
                  child: Text(
                    "pick from gallery",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
