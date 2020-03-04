import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_watch_shop/global_widgets/custom_appbar.dart';

import 'custom_appbar.dart';

class AboutPage extends StatelessWidget {
  final String title;

  AboutPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: new DecorationImage(
              image: AssetImage("SVG/2x/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 2.0, sigmaY: 3.0),
            child: Container(
              decoration:
                  new BoxDecoration(color: Colors.black.withOpacity(0.2)),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: CustomAppBar(),
          body: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 5.0),
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Text("About Us",
                        style: new TextStyle(
                          fontSize: 30, color: Colors.greenAccent
                        )),
                    Text(
                      "B.M.S College of Engineering , Bengaluru was establisjed in the uear 1946 by Late Sri. B.M. Sreenivasaiash, a great visionary and philanthropist and was nurtured by his illustrious son Late Sri. B.S Narayan. BMSCE is the first private sector initiative in engineering education in India. Started with only 3 Undergraduate and 16 PostGraduate courses,BMSCE today offer 13 undergraduate and 16 postgraduate courses both in conventional and emerging areas. 14 of its Departments are recognized as Reasearch Centres offering PhD/M.Sc(Engineering by research) degree in Science,Engineering, Architecture and Management. Modernisation and Exapnasionand sophistication have not changed the basic philosophy of education in BMSCE ",
                      style: new TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    Text("Festival of Faith",
                        style: new TextStyle(
                          fontSize: 30,color: Colors.greenAccent
                        )),
                    Text(
                        "Utsav, which was conceived in 1981, has been, and will be a fest that caters to the youth,the spirit and the competition amongst students at a magnitude like no other.Every UTSAV hs been viewed as a platform that provides great oppurtunity to students who are highly talented and passionate about their interests in dance,music,debate ,theatre and so on . With our flagship events:TURTLE JAM, DJ NIGHT and WHIPLASH, we have raised the bar of cultural fest that is known for its magnitude. The 33rd edition promises to be larger,louder and more exciting than before. With up beat music, exciting events, and non stop performances, UTSAV is the one place you need to be.",
                        style:
                            new TextStyle(fontSize: 10, color: Colors.white)),
                    Text("The Theme",
                        style: new TextStyle(
                          fontSize: 30,color: Colors.greenAccent
                        )),
                    Text(
                        "BMSCE UTSAV 2020 marks the adcent of the new decade and aims to celebrate the significance and advances of humanity int the new decade. The theme of this edition's UTSAV is \"Neuvo Decennium\" which extrapolates as \"The New Decade\". The theme explores the limitless nature of mankind's imagination. It fosters our minds to explore and perceive the unbounded possibilities of the universe around us. The Advances in the field of technology,media,arts,culture,society,fashion,humanitarian acts, green approaches and many more are aimed to be celebrated.",
                        style:
                            new TextStyle(fontSize: 10, color: Colors.white)),
                    Text("Why Sponsor us",
                        style: new TextStyle(
                          fontSize: 30,color: Colors.greenAccent
                        )),
                    Text(
                        "Collaboration with UTSAV 2020 will give you a unique oppurtunity to align your brand in th way yiu desire and will help you to appeal to a dynamic and receptive  spectrum of people. UTSAV drawn an enormous crowd of students every year. As we gear up and get the community hyped up for another phenmomenal UTSAV, we invite you to partner with us. We have had amazing support from a large number of sponsors ovr the years and with your contribution, we will make UTSAV 2020 another record breaker. Sponsors are what make this event possible and we offer you an excellent set of benefits.",
                        style: new TextStyle(fontSize: 10, color: Colors.white))
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DevPage extends StatelessWidget {
  final String title;

  DevPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: new DecorationImage(
              image: AssetImage("SVG/2x/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 2.0, sigmaY: 3.0),
            child: Container(
              decoration:
                  new BoxDecoration(color: Colors.black.withOpacity(0.2)),
            ),
          ),
        ),
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          appBar: CustomAppBar(),
          body: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 5.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/vivek.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Text('Vivek V',
                      style:
                          new TextStyle(fontSize: 30, color: Colors.white60)),
                          Text('(@chuckooVv)',
                      style:
                          new TextStyle(fontSize: 30, color: Colors.white60)),
                  Image.asset('assets/images/rahul.jpg',
                      height: 200, width: 200, fit: BoxFit.fitWidth),
                  Text('Rahul R S',
                      style:
                          new TextStyle(fontSize: 30, color: Colors.white60)),
                          Text('(@the_heisenberks)',
                      style:
                          new TextStyle(fontSize: 30, color: Colors.white60)),
                  Image.asset('assets/images/Vikram.jpg',
                      height: 200, width: 200, fit: BoxFit.fitWidth),
                  Text('Vikram K',
                      style:
                          new TextStyle(fontSize: 30, color: Colors.white60)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CorePage extends StatelessWidget {
  final String title;

  CorePage(this.title);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: new DecorationImage(
              image: AssetImage("SVG/2x/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 2.0, sigmaY: 3.0),
            child: Container(
              decoration:
                  new BoxDecoration(color: Colors.black.withOpacity(0.2)),
            ),
          ),
        ),
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          appBar: CustomAppBar(),
          body: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 5.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/Abhishek.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Text('Abhishek',
                      style:
                          new TextStyle(fontSize: 30, color: Colors.white60)),
                  Image.asset('assets/images/HSGr.jpg',
                      height: 200, width: 200, fit: BoxFit.fitWidth),
                  Text('HS GuruPrasad sir',
                      style:
                          new TextStyle(fontSize: 30, color: Colors.white60)),
                  Image.asset('assets/images/Pratimas.jpg',
                      height: 200, width: 200, fit: BoxFit.fitWidth),
                  Text('Pratima Ma\'am',
                      style:
                          new TextStyle(fontSize: 30, color: Colors.white60)),
                          Image.asset(
                    'assets/images/Red.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Text('Reddy Sir',
                      style:
                          new TextStyle(fontSize: 30, color: Colors.white60)),
                          Image.asset(
                    'assets/images/Mithun.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Text('Mithun',
                      style:
                          new TextStyle(fontSize: 30, color: Colors.white60)),
                          Image.asset(
                    'assets/images/Sameer.jpeg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Text('Sameer',
                      style:
                          new TextStyle(fontSize: 30, color: Colors.white60)),
                              Image.asset(
                    'assets/images/Sanjana.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Text('Sanjana',
                      style:
                          new TextStyle(fontSize: 30, color: Colors.white60)),

                      Image.asset(
                    'assets/images/Smriti.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Text('Smriti',
                      style:
                          new TextStyle(fontSize: 30, color: Colors.white60)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
