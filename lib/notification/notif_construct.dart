

class NotifData {
  String img;
  String name;
  String description;
  String mycontact;
  bool incontact;

  NotifData(
      {required this.img,
      required this.name,
      required this.description,
      required this.mycontact,
      required this.incontact,
      });
}

notif() {
  List<NotifData> notelist = [];
  NotifData details =
      NotifData(img: '', name: '', description: '',incontact: true, mycontact: '');
  details = NotifData(
    img:
        'https://image.shutterstock.com/image-photo/im-not-just-fashion-business-260nw-1216577038.jpg',
    name: 'Manobala Namachivaya',
    description: ' Has requested to join \n #Read Together',
    mycontact: '   in your contact joined Kntag',
    incontact: true,
  );
  notelist.add(details);

  details = NotifData(
    img:
        'https://image.shutterstock.com/image-photo/im-not-just-fashion-business-260nw-1216577038.jpg',
    name: 'Manobala Namachivaya',
    description: 'Has requested to join \n #Read Together',
    mycontact: 'in your contact joined Kntag',
    incontact: false,
  );
  notelist.add(details);

  details = NotifData(
    img:
        'https://image.shutterstock.com/image-photo/im-not-just-fashion-business-260nw-1216577038.jpg',
    name: 'Manobala Namachivaya',
    description: 'Has requested to join \n #Read Together',
    mycontact: 'in your contact joined Kntag',
    incontact: true,
  );
  notelist.add(details);

  details = NotifData(
    img:
        'https://image.shutterstock.com/image-photo/im-not-just-fashion-business-260nw-1216577038.jpg',
    name: 'Manobala Namachivaya',
    description: 'Has requested to join \n #Read Together',
    mycontact: 'in your contact joined Kntag',
    incontact: false,
  );
  notelist.add(details);

  details = NotifData(
    img:
        'https://image.shutterstock.com/image-photo/im-not-just-fashion-business-260nw-1216577038.jpg',
    name: 'Manobala Namachivaya',
    description: 'Has requested to join \n #Read Together',
    mycontact: 'in your contact joined Kntag',
    incontact: false,
  );
  notelist.add(details);

  details = NotifData(
    img:
        'https://image.shutterstock.com/image-photo/im-not-just-fashion-business-260nw-1216577038.jpg',
    name: 'Manobala Namachivaya',
    description: 'Has requested to join \n #Read Together',
    mycontact: 'in your contact joined Kntag',
    incontact: true,
  );
  notelist.add(details);

  details = NotifData(
    img:
        'https://image.shutterstock.com/image-photo/im-not-just-fashion-business-260nw-1216577038.jpg',
    name: 'Manobala Namachivaya',
    description: 'Has requested to join \n #Read Together',
    mycontact: 'in your contact joined Kntag',
    incontact: false,
  );
  notelist.add(details);

  details = NotifData(
    img:
        'https://image.shutterstock.com/image-photo/im-not-just-fashion-business-260nw-1216577038.jpg',
    name: 'Manobala Namachivaya',
    description: 'Has requested to join \n #Read Together',
    mycontact: 'in your contact joined Kntag',
    incontact: false,
  );
  notelist.add(details);

  return notelist;
}
