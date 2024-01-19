

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/page/choose_topic_pages.dart';
import 'package:meditation_app/untils/theme.dart';
import 'package:meditation_app/widgets/reponsive_builder.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    // final  orientation = MediaQuery.of(context).orientation;
    final  size = MediaQuery.of(context).size;
    return  Scaffold(

    backgroundColor: kColorPrimary,
    body: SafeArea(
      child : ReponsiveBuilder(
        portrait: Stack(
        children:[
           const GetStartBackgroud(), 
           const FractionallySizedBox(
            heightFactor: 0.35,
            child: GetStartHeader(),
           ),
           Align(
            alignment: const Alignment(0.0, 0.8),
            child: GetStartedButton(
              fixedSize:  MaterialStateProperty.all(
                Size(
                  size.width * 0.9,
                  size.height * 0.065,
                ),
              ),
               textStyle :MaterialStateProperty.all(
                  PrimaryFont.medium(size.height * 0.015),
                ),
            ),
           )
        ],
      ), 
        landscape: Row(
        children: [
          const Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: FractionallySizedBox(
                heightFactor: 0.7,
                child: GetStartHeader(),
              ),
            ),
          ),
          Expanded(
            child: 
            Stack(
              children: [
                const GetStartBackgroud(),
                Align(
                    alignment: const Alignment(0.0, 0.8),
                    child: GetStartedButton(
                      fixedSize:  MaterialStateProperty.all(
                        Size(
                          size.width * 0.9,
                          size.height * 0.065,
                        ),
                      ),
                      textStyle :MaterialStateProperty.all(
                          PrimaryFont.medium(size.height * 0.015),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
      ),)
    ),
   );
  }

}

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
    required this.fixedSize,
    required this.textStyle,
  });

  final MaterialStateProperty<Size>? fixedSize;
  final MaterialStateProperty<TextStyle>? textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed('$ChooseTopicPage');
      }, 
      child:const Text('GET START'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kColorLinghtGren),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(38),
          ),
        ),
        elevation: MaterialStateProperty.all(0),
        fixedSize: fixedSize,
        foregroundColor: MaterialStateProperty.all(kColorDarkGren),
        textStyle: textStyle,
      ),
    );
  }
}

class GetStartBackgroud extends StatelessWidget {
  const GetStartBackgroud({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final onrientation = context.orientation;
    return Align(
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
        heightFactor:  context.orientation == Orientation.portrait ?  0.6 : 0.9,
        widthFactor: 1,
        child: FittedBox(
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          child: SvgPicture.asset('assets/images/get_start.svg'),
        ),
        ),
    );
  }
}

class GetStartHeader extends StatelessWidget {
  const GetStartHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Expanded(
            child: 
              SvgPicture.asset('assets/images/ic_logo.svg',
              alignment:const Alignment(0.0 ,-0.8),
              ),
          ),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: FittedBox(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Hi Afsar, Welcome\n',
                  style: PrimaryFont.medium(30).copyWith(
                    color: kColorLinghtYellow,
                    height: 1.3,
                  ),
                children : [
                    TextSpan(
                      text:'to Silent Moon ',
                        style: PrimaryFont.thin(30).copyWith(
                           color: kColorLinghtYellow,
                          ),
                    ),  
                ],
              ),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: SizedBox.expand(
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FittedBox(
                  child: Text('Explore the app, Find some peace of mind \n to prepare for meditation.',
                      style: PrimaryFont.light(16).copyWith(
                      color: kColorLinghtGren,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),  
      ],
    );
  }

}