import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({Key? key}) : super(key: key);

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              child: ShaderMask(
                  shaderCallback: (rect){
                    return LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter
                        ,colors:
                    [Colors.black, Colors.transparent]).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/img.jpeg',)),

            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.55
              ),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                 const  Text('Hello I am',
                    style: TextStyle(color: Colors.white,fontSize: 30),),
                  const SizedBox(height: 20),

                  const Text('Abhishek Pandey',
                    style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20),

                  const  Text('Software Developer',
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                  const SizedBox(height: 30,),
                  SizedBox(
                    width: 120,
                    child: TextButton(onPressed: (){},
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          primary: Colors.black
                      ),
                      child: const Text('Hier Me'),),
                  ),

                  const SizedBox(height: 60,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){},
                          icon: const Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          )
                      ),
                      IconButton(onPressed: (){},
                          icon: const Icon (
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          )
                      ),
                      IconButton(onPressed: (){},
                          icon:const Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          )
                      ),
                      IconButton(onPressed: (){},
                          icon:const Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          )
                      ),
                    ],
                  )

                ],

              ),
            )
          ],
        ),
      ),
    );
  }
}
