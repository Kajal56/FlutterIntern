import 'dart:ffi';

class LawCase{
  final int id;
  final String personA;
  final String personB;
  final String courtname;
  final int caseno;
  final String casetype;
  final String audiourl;
  final String actname;
  final String judgename;
  final String date;
  // final String date;

  LawCase(this.id, this.personA, this.personB, this.courtname, this.caseno, this.casetype, this.audiourl, this.actname, this.judgename, this.date);


}


class LawCases{
  static final cases = [

    LawCase(1, 'Kajal Malik Verma', 'American Telephone and Telegraph Company', 'Bombay High Court', 124, 'Corruption','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4','Bengal Indigo Contracts Act','Justice Vikram','19-2-2002'),
    LawCase(2, 'Mamta', 'Parents', "Punjab and Haryana High Court", 286, 'Child Marriage','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4','Indian Registration of Ships Act, 1841','Justice Vikram','13-3-2002'),
    LawCase(3, 'Associated Cement Companies', 'Adolf Dassler (Adi was short name of Adolf)', 'Punjab and Haryana High Court', 378, 'Animal Abuse','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4','Calcutta Land-revenue Act','Justice Vikram','19-2-2002'),
    LawCase(4, 'American Telephone and Telegraph Company', 'School', 'Punjab and Haryana High Court', 378, 'Corruption','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4','Indian Registration of Ships Act, 1841','Justice Jaideep Singh','19-12-2002'),
    LawCase(5, 'Adolf Dassler (Adi was short name of Adolf)', 'Santro', 'Punjab and Haryana High Court', 378, 'Animal Abuse','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4','Calcutta Land-revenue Act','Justice Jaideep Singh','19-2-2002'),
    LawCase(6, '	Associated Cement Companies', 'Santro', 'Punjab and Haryana High Court', 378, 'Animal Abuse','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4','Indian Registration of Ships Act, 1841','Justice Jaideep Singh','1-3-2012'),
    LawCase(7, 'Kajal', 'MessManager', 'Bombay High Court', 124, 'Corruption','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4','Calcutta Land-revenue Act','Justice Vikram','23-2-2009'),
    LawCase(8, 'American Telephone and Telegraph Company', 'Uncle', "Punjab and Haryana High Court", 286, 'Child Marriage','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4','Bengal Indigo Contracts Act','Justice Krishna Murti','3-2-2020'),
    LawCase(9, '	Associated Cement Companies', 'Kudremukh Iron and Steel Company', 'Punjab and Haryana High Court', 378, 'Theft','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4','Madras Revenue Commissioner Act','Justice Krishna Murti','1-2-2052'),
    LawCase(10, 'Kajal', '	Associated Cement Companies', 'Bombay High Court', 124, 'Corruption','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4','Madras Revenue Commissioner Act','Justice Jaideep Singh','19-6-1902'),
    LawCase(11, 'Adolf Dassler (Adi was short name of Adolf)', 'American Telephone and Telegraph Company', "Punjab and Haryana High Court", 286, 'Child Marriage','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4','Madras Revenue Commissioner Act','Justice Vikram','18-7-2022'),
    LawCase(12, 'Kudremukh Iron and Steel Company', 'Santro', 'Punjab and Haryana High Court', 378, 'Animal Abuse','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4','Calcutta Land-revenue Act','Justice Krishna Murti','26-2-2019'),
    LawCase(13, 'Kajal', '	Associated Cement Companies', 'Bombay High Court', 124, 'Corruption','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4','Indian Registration of Ships Act, 1841','Justice Kajal Malik','26-2-1993'),
    LawCase(14, '	Associated Cement Companies', 'Kudremukh Iron and Steel Company', "Punjab and Haryana High Court", 286, 'Child Marriage','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4','Bengal Indigo Contracts Act','Justice Kajal Malik','24-2-1994'),
    LawCase(15, 'Adolf Dassler (Adi was short name of Adolf)', 'Santro', 'Punjab and Haryana High Court', 378, 'Animal Abuse','https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4','Madras Revenue Commissioner Act','Justice Krishna Murti','19-2-1990'),

  ];

}

// '	Associated Cement Companies'
// 'Adolf Dassler (Adi was short name of Adolf)'
// // American Telephone and Telegraph Company
//
// 'American Telephone and Telegraph Company'
// 'Consumer News and Business Channel'
// 'Compatibility and Quality'
// 'Entertainment and Sports Programming Network'
// 'Hindustan Computer Limited'
// 'International Business Machines'
// 'Kudremukh Iron and Steel Company'

