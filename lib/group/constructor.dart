class Groupdatas {
  String title;
  String spot;
  String joined;
  String prof;
  // ignore: non_constant_identifier_names
  String profimg;
  String date;
  String time;
  String location;
  List pic;
  Groupdatas({
    required this.title,
    required this.joined,
    required this.spot,
    required this.prof,
    // ignore: non_constant_identifier_names
    required this.profimg,
    required this.date,
    required this.time,
    required this.location,
    required this.pic,
    //  required this.pic2,
    //required this.pic3,
    //required this.pic4,
  });
}

//String title = '#BookClub';
String joined = '13 joined';
String spot = '12/25 spot left';
String date = '13 feb 2022';
String time = '7:00pm to 10:00pm';
String location = 'Location: Race Course';

String pic1 =
    'https://images.unsplash.com/photo-1520409364224-63400afe26e5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWVucyUyMGhhaXJ8ZW58MHx8MHx8&w=1000&q=80';
String pic2 =
    'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWVufGVufDB8fDB8fA%3D%3D&w=1000&q=80';
String pic3 =
    'https://image.shutterstock.com/image-photo/im-not-just-fashion-business-260nw-1216577038.jpg';
String prof = 'https://media.istockphoto.com/vectors/book-club-template-education-and-reading-flat-top-view-library-table-vector-id1158688165';
// 'https://images.pexels.com/photos/718261/pexels-photo-718261.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';
String profimg =
    'https://thumbs.dreamstime.com/b/smiling-african-american-boy-12753504.jpg';
groups() {
  List<Groupdatas> datalist = [];
  Groupdatas details = Groupdatas(
    joined: '',
    title: '',
    spot: '',
    prof: '',
    profimg: '',
    date: '',
    time: '',
    location: '',
    pic: [],
  );
//1
  details = Groupdatas(
    title: '#Book Club',
    spot: spot,
    joined: joined,
    prof: prof,
    profimg: profimg,
    date: date,
    time: time,
    location: location,
    pic: [pic1, pic2, pic3],
  );

  datalist.add(details);

//2
  details = Groupdatas(
    title: "#Music Club",
    spot: spot,
    joined: joined,
    prof: 'https://yt3.ggpht.com/djdtXJfeK-YN5XPFN1LhQUAUKtKiNWpMcYKMLSS3qYUwhHU3fK2gTsyXu0xBvuqPiGy6SVLmrQ=s900-c-k-c0x00ffffff-no-rj',
    profimg: profimg,
    date: date,
    time: time,
    location: location,
    pic: [pic1, pic2, pic3],
  );

  datalist.add(details);

  //3

  details = Groupdatas(
    title: '#Comedy Show',
    spot: spot,
    joined: joined,
    prof: 'https://i.gifer.com/origin/6b/6b6c468ee632e45189372f601e41d28f_w200.gif',
    profimg: profimg,
    date: date,
    time: time,
    location: location,
    pic: [pic1, pic2, pic3],
  );

  datalist.add(details);

//4

  details = Groupdatas(
    title: '#Magic show',
    spot: spot,
    joined: joined,
    prof: 'https://media.istockphoto.com/photos/hands-of-magician-doing-tricks-with-a-deck-of-cards-picture-id1183464120?k=20&m=1183464120&s=612x612&w=0&h=808ddL-J-tCtFtsMyD84eEB8bcRjDH3geX6LNfgeCAQ=',
    profimg: profimg,
    date: date,
    time: time,
    location: location,
    pic: [pic1, pic2, pic3],
  );

  datalist.add(details);

//5

  details = Groupdatas(
    title: '#Swimming Club',
    spot: spot,
    joined: joined,
    prof: 'https://media.istockphoto.com/photos/baby-twin-boy-and-girl-floating-on-swim-rings-picture-id628951466?s=170667a',
    profimg: profimg,
    date: date,
    time: time,
    location: location,
    pic: [pic1, pic2, pic3],
  );

  datalist.add(details);

//6

  details = Groupdatas(
    title: '#Laughing Club',
    spot: spot,
    joined: joined,
    prof: 'https://psmag.com/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTI3NTgyMzc1MDQyMzkwNDk0/laugh.jpg',
    profimg: profimg,
    date: date,
    time: time,
    location: location,
    pic: [pic1, pic2, pic3],
  );

  datalist.add(details);

  return datalist;
}
