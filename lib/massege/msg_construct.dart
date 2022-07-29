

class MsgConst {
  String title;
  String profi;
  String spot;
  String joind;
  List prof;
  MsgConst(
      {required this.joind,
      required this.profi,
      required this.prof,
      required this.spot,
      required this.title});
}

String profi = 'https://media.istockphoto.com/vectors/book-club-template-education-and-reading-flat-top-view-library-table-vector-id1158688165';
String pic1 =
    'https://images.unsplash.com/photo-1520409364224-63400afe26e5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWVucyUyMGhhaXJ8ZW58MHx8MHx8&w=1000&q=80';
String pic2 =
    'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWVufGVufDB8fDB8fA%3D%3D&w=1000&q=80';
String pic3 =
    'https://image.shutterstock.com/image-photo/im-not-just-fashion-business-260nw-1216577038.jpg';

massegedatas() {
  List<MsgConst> msglist = [];
  MsgConst details = MsgConst(joind: '', prof: [], spot: '', title: '',profi: '');
  details = MsgConst(
    title: '#Book Club',
    joind: '13 joined',
    spot: '12/25, Spot left',
    profi: profi,
    prof: [pic1, pic2, pic3],
  );
  msglist.add(details);

  details = MsgConst(
    title: '#Music club',
    joind: '11 joined',
    spot: '12/25, Spot left',
    profi: profi,
    prof: [pic1, pic2, pic3],
  );
  msglist.add(details);

  details = MsgConst(
    title: '#Comedy Show',
    joind: '20 joined',
    spot: '12/25, Spot left',
    profi: profi,
    prof: [pic1, pic2, pic3],
  );
  msglist.add(details);

  details = MsgConst(
    title: '#Magic Show',
    joind: '18 joined',
    spot: '12/25, Spot left',
    profi: profi,
    prof: [pic1, pic2, pic3],
  );
  msglist.add(details);

  details = MsgConst(
    title: '#Book Club',
    joind: '10 joined',
    spot: '12/25, Spot left',
    profi: profi,
    prof: [pic1, pic2, pic3],
  );
  msglist.add(details);

  details = MsgConst(
    title: '#Swimming Club',
    joind: '7 joined',
    spot: '12/25, Spot left',
    profi: profi,
    prof: [pic1, pic2, pic3],
  );
  msglist.add(details);
  return msglist;
}
