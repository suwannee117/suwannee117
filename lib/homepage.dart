import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          "My App Home Page",
          style: GoogleFonts.itim(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          //profilepic(),
         profileinternet(),
          myname(),
          birthday(),
          aboutmebar(),
          major(),
          university(),
          email(),
          facebook(),
        ],
      ),
    );
  }

  Row facebook() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(  
          padding: const EdgeInsets.all(8.0),
          child: FaIcon(
            FontAwesomeIcons.facebookF,
            color: Colors.green,
          ),
        ),
        Text(
          "Suwannee Saechew",
          style: GoogleFonts.alata(
            color: Colors.orange,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }

  Row university() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FaIcon(
            FontAwesomeIcons.university,
            color: Colors.blue[700],
          ),
        ),
        Text(
          "Thaksin University",
          style: GoogleFonts.alata(
            color: Colors.green,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }

  Row major() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FaIcon(
            FontAwesomeIcons.bookOpen,
            color: Colors.blue[700],
          ),
        ),
        Text(
          "Computer-Science",
          style: GoogleFonts.alata(
            color: Colors.green,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }

  Row email() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FaIcon(
            FontAwesomeIcons.envelope,
            color: Colors.blue[700],
          ),
        ),
        Text(
          "622021117@tsu.ac.th",
          style: GoogleFonts.alata(
            color: Colors.green,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }

  Padding aboutmebar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Divider(
                color: Colors.blue,
                thickness: 4,
              ),
            ),
          ),
          Text(
            'About Me',
            style: GoogleFonts.amiko(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Divider(
                color: Colors.blue,
                thickness: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget profileinternet() {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: CircleAvatar(
        radius: 80,
        backgroundColor: Colors.pink[200],
        child: CircleAvatar(
          radius: 75,
          backgroundColor: Colors.blue[200],
          child: CircleAvatar(
            radius: 73,
            backgroundColor: Colors.orange[200],
            child: CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                  'https://scontent.fhdy1-1.fna.fbcdn.net/v/t1.6435-9/188048076_1214234029015212_7906955780608073059_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeHSuuredQEJQeWAf0fuuk5KVUeTKqgIud9VR5MqqAi532PPAId5xARTCaGUnOqgCz_UmYdPQvlglBpm-rhQd2VN&_nc_ohc=c018Fmuz4kYAX9fd0OE&_nc_ht=scontent.fhdy1-1.fna&oh=00_AT9Xz91Jw4Xi3_93M8U9B9r_rWPU0yLmnm1xL_RenNbfcQ&oe=61EAF53A'),
            ),
          ),
        ),
      ),
    );
  }

  // Image profilepic() {
  //   return Image.asset('images\now.jpg', fit: BoxFit.cover);
  // }

  Widget birthday() {
    return Row( 
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FaIcon(
            FontAwesomeIcons.birthdayCake,
            color: Colors.orange[700],
          ),
        ),
        Text(
          "26/May/2000",
          style: GoogleFonts.itim(
            color: Colors.green,
            fontSize: 22,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }

  Widget myname() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          child: FaIcon(FontAwesomeIcons.userTie, color: Colors.black87),
        ),
        Text(
          "Suwannee Saechew",
          style: GoogleFonts.alice(
            color: Colors.blue[400],
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}