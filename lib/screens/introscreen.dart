import 'package:demo_flutter/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<Slide> slides=[];

  @override
  void initState() {
    super.initState();
    slides.add(
      new Slide(
        widgetTitle: Column(
          children: [
            Text("Welcome", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("Welcome to this awesome intro screen app",style: TextStyle(color: Colors.white, fontSize: 20),textAlign: TextAlign.center,)
          ],
        ),
        pathImage: "assets/undraw_Mobile_application_mr4r.png",
        backgroundColor: Colors.green[300]
      ),
    );
    slides.add(
      new Slide(
        widgetTitle: Column(
          children: [
            Text("Awesome App", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("This is an awesome app, of intro screen design",style: TextStyle(color: Colors.white, fontSize: 20),textAlign: TextAlign.center,)
          ],
        ),
        pathImage: "assets/undraw_mobile_interface_wakp.png",
        backgroundColor: Colors.blue[200]
      ),
    );
    slides.add(
      new Slide(
        widgetTitle: Column(
          children: [
            Text("Flutter", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("Flutter is awesome for app development",style: TextStyle(color: Colors.white, fontSize: 20),textAlign: TextAlign.center,)
          ],
        ),
        pathImage: "assets/undraw_mobile_testing_reah.png",
        backgroundColor: Colors.deepPurple[300]
      ),
    );
  }

  void onDonePress(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
      colorDot: Colors.white,
      colorActiveDot: Colors.red,
    );
  }
}