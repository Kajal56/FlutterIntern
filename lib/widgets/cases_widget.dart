import 'package:flutter/material.dart';
import 'package:lex_res/cases/casesdata.dart';
import 'package:lex_res/widgets/widget_spe.dart';
class CasesWidget extends StatelessWidget {
  // const CasesWidget({Key? key}) : super(key: key);
  final LawCase lawcase ;


  const CasesWidget({Key? key, required this.lawcase})
      : assert(lawcase != null),
        super(key: key);

  trimmed(str){
    var ret;
    if(str.length>20){
      ret= str.substring(0,20)+'...';
      return ret;
    }
    else return str;

  }

  abbr(court){
    var abbri= court.split(" ");
    String k="";
    for(int i=0;i<abbri.length;i++){
      k=k+abbri[i][0];

    }

    return k.toUpperCase();
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: Card(

        child: ListTile(
          onTap: () {
            print('Someone tapped on the card');
            // return SpeWidget(lawcase: lawcase);
            // Navigator.pushNamed(context, 'moreInfo', arguments: {'lawcase' : lawcase, 'intdata' : lawcase.id});
            int data;
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SpeWidget(lawCase: lawcase,)));
          },
          leading: Container(
            width: 30,
            child: Image.network('https://th.bing.com/th/id/OIP._ubz9GoDT3pynMo3T2IwggHaHa?pid=ImgDet&rs=1'
            ),
          ),
          // leading: Image.network('https://th.bing.com/th/id/R.66ae3a2ea426e73f993912e223611e61?rik=BSTVnbV8G9W2ow&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_536590.png&ehk=2nsQnhUZcOPvbe60vyz9EJCcq8Vy0M6XDoF%2fe24cE5Q%3d&risl=&pid=ImgRaw&r=0'),
          // leading: Image.network('https://fthmb.tqn.com/c2gJp_P5kFTURcJelh9eeeuM3IA=/1500x1000/filters:fill(auto,1)/house-sparrow-5974a13bd963ac00103febf7.jpg'),

          title: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              width: 100,
              child: Text(trimmed(lawcase.personA) +" V/S "+ trimmed(lawcase.personB),
              style: TextStyle(
                fontSize: 10
              ),),
            ),
          ),

          subtitle: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 3),
            child: Text(lawcase.casetype,
              style: TextStyle(
                  fontSize: 10
              ),),
          ),


          trailing: Container(
            // color: Colors.yellow,
            height: 50,
            width: 80,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                      lawcase.casetype,
                    style: TextStyle(
                      fontSize: 10
                    ),
                  ),
                  Text(
                    lawcase.caseno.toString(),
                    style: TextStyle(
                        fontSize: 10
                    ),
                  ),
                  Text(
                    lawcase.date,
                    style: TextStyle(
                        fontSize: 10
                    ),
                  )

                ],
              ),
            ),
          ),
          // trailing: Text(abbr(lawcase.courtname),
          //   style: TextStyle(
          //       fontSize: 10
          //   ),),
        ),
      ),
    );
  }
}
