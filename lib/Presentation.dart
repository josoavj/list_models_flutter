import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_models/Homepage.dart';

class transite extends StatefulWidget {
  const transite({super.key});

  @override
  State<transite> createState() => _transiteState();
}

class _transiteState extends State<transite> {
  @override
  void initState(){
    goto();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.blueAccent
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.cube_box_fill, size: 120, color: Colors.white,),
            Text(
              "WELCOME",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
  // Pour afficher la page d'acceuil
  Future<void> goto() async{
    await Future.delayed( const Duration(seconds: 5));
    var pushReplacement = Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}
