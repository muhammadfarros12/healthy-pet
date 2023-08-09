import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_healthy_pet/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => HomeScreen()), (route) => false);
    });

    return Scaffold(
      body: Stack(
        children: [
          Image.asset('asset/image/animal_background.png'),
          Center(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 42,),
                Image.asset('asset/image/testing.png', height: 22,),
                const SizedBox(height: 72,),
                RichText(
                textAlign: TextAlign.center,  
                text: TextSpan(text: 'Helping you \nto keep ',
                style: GoogleFonts.manrope(fontSize: 24, color: const Color(0xFFDEE1FE), letterSpacing: 3.5/100, height: 152/100), 
                children:const [ 
                  TextSpan(text: 'Your Bestie', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800)), 
                  TextSpan(text: '\nstay healthy!'),
                  ]))
              ],
            )),
          )
        ],
      ),
    );
  }
}