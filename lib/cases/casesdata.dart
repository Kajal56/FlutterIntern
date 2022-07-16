import 'dart:ffi';

class LawCase{
  final int id;
  final String personA;
  final String personB;
  final String courtname;
  final int caseno;
  final String casetype;
  final String audiourl;
  // final String date;

  LawCase(this.id, this.personA, this.personB, this.courtname, this.caseno, this.casetype, this.audiourl);


}


class LawCases{
  static final cases = [

    LawCase(1, 'Kajal', 'MessManager', 'Bombay High Court', 124, 'Corruption','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4'),
    LawCase(2, 'Mamta', 'Parents', "Punjab and Haryana High Court", 286, 'Child Marriage','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4'),
    LawCase(3, 'Kajal', 'Santro', 'Punjab and Haryana High Court', 378, 'Animal Abuse','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4'),
    LawCase(4, 'Vivek', 'School', 'Punjab and Haryana High Court', 378, 'Corruption','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4'),
    LawCase(5, 'Kajal', 'Santro', 'Punjab and Haryana High Court', 378, 'Animal Abuse','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4'),
    LawCase(6, 'Kajal', 'Santro', 'Punjab and Haryana High Court', 378, 'Animal Abuse','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4'),
    LawCase(7, 'Kajal', 'MessManager', 'Bombay High Court', 124, 'Corruption','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4'),
    LawCase(8, 'Seema', 'Uncle', "Punjab and Haryana High Court", 286, 'Child Marriage','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4'),
    LawCase(9, 'Kajal', 'Vivek', 'Punjab and Haryana High Court', 378, 'Theft','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4'),
    LawCase(10, 'Kajal', 'MessManager', 'Bombay High Court', 124, 'Corruption','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4'),
    LawCase(11, 'Vivek', 'Mr. Shyam', "Punjab and Haryana High Court", 286, 'Child Marriage','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4'),
    LawCase(12, 'Kajal', 'Santro', 'Punjab and Haryana High Court', 378, 'Animal Abuse','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4'),
    LawCase(13, 'Kajal', 'MessManager', 'Bombay High Court', 124, 'Corruption','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4'),
    LawCase(14, 'Anandi', 'Parents', "Punjab and Haryana High Court", 286, 'Child Marriage','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4'),
    LawCase(15, 'Kajal', 'Santro', 'Punjab and Haryana High Court', 378, 'Animal Abuse','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4'),

  ];

}




