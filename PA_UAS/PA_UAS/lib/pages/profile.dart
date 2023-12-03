import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:posttest5_096_filipus_manik/pages/edit_profile.dart';
import 'package:posttest5_096_filipus_manik/widget/Button.dart';
import 'package:posttest5_096_filipus_manik/widget/button_bulat.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFF374259),
      body: ListView(
        children: [
          Stack(
            children: [
              SizedBox(
                width: lebar,
                height: tinggi / 2.10,
              ),
              Container(
                width: lebar,
                height: tinggi / 2.5,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(350),
                      bottomRight: Radius.circular(350)),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 7.5,
                right: MediaQuery.of(context).size.width / 3.12,
                child: Container(
                  width: lebar / 3,
                  height: tinggi / 3,
                  decoration: const BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/logo-wallpaper.jpeg'),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: MyCircleButton(
                  icon: Icons.favorite,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: AutoSizeText(
                'I work at EDLAC and I am intrested in meeting a hardworking and loving man. I,m your girl.',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.yellow[600],
                ),
                maxLines: 5,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: lebar,
            height: tinggi / 1.7,
            margin:
                const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF374259),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 8, offset: Offset(0, 4), spreadRadius: 1.0)
                ]),
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.only(left: 10, top: 20),
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/logo-wallpaper.jpeg'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: Text(
                        'Details',
                        style: GoogleFonts.poppins(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.yellow),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.yellow, //color of divider
                  height: 5, //height spacing of divider
                  thickness: 3, //thickness of divier line
                  indent: 10, //spacing at the start of divider
                  endIndent: 10, //spacing at the end of divider
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    AutoSizeText(
                      'Username',
                      style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width / 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow),
                    ),
                    Container(width: MediaQuery.of(context).size.width / 10),
                    AutoSizeText(
                      'Filipus Adriel Manik',
                      style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width / 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    AutoSizeText(
                      'Usia',
                      style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width / 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow),
                    ),
                    Container(width: MediaQuery.of(context).size.width / 1.5),
                    AutoSizeText(
                      '19',
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width / 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    AutoSizeText(
                      'No. Telepon',
                      style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width / 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow),
                    ),
                    Container(width: MediaQuery.of(context).size.width / 7),
                    AutoSizeText(
                      '0812-1810-0498',
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width / 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    AutoSizeText(
                      'Email',
                      style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width / 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow),
                    ),
                    Container(width: MediaQuery.of(context).size.width / 16),
                    AutoSizeText(
                      'manikfilip03@gmail.com',
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width / 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: MyButton(
                    onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute(builder: (BuildContext context) {
                      return const MyEditProfile();
                    })),
                    text: 'Edit',
                    backgroundColor: Colors.yellow,
                    textColor: const Color(0xFF374259),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
