import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_kntag/group/constructor.dart';
import 'package:the_kntag/group/groups.dart';

class GroupView extends StatefulWidget {
  const GroupView({Key? key}) : super(key: key);

  @override
  State<GroupView> createState() => _GroupViewState();
}

class _GroupViewState extends State<GroupView> {
  //final TextEditingController _controller = TextEditingController();
  List<Groupdatas> grouptile = [];
  double kmSlider = 5;

  Future showAlertBox() async {
    return await showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          title: Text("Km Range 0 - ${kmSlider.round().toString()}"),
          content: SizedBox(
            height: 50,
            child: (Slider(
              value: kmSlider,
              label: "${kmSlider.round().toString()} KM",
              min: 0,
              max: 100,
              divisions: 10,
              onChanged: (value) => {setState(() => kmSlider = value)},
            )),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              child: Text("Ok"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    grouptile = groups();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 221, 234),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 206, 221, 234),
        elevation: 0,
        centerTitle: false,
        title: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: Colors.white),
          height: 8.h,
          width: width * 0.75,
          child: Row(children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 7),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Search Group'),
                  keyboardType: TextInputType.name,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8, bottom: 16, top: 4),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
            ),
          ]),
        ),
        actions: [
          Column(
            children: [
              Expanded(
                flex: 2,
                child: IconButton(
                    color: Color.fromARGB(255, 9, 76, 203),
                    onPressed: () {
                      showAlertBox();
                    },
                    icon: Icon(Icons.location_on)),
              ),
              Expanded(
                child: Text(
                  '23km',
                  style: TextStyle(
                      fontSize: 10, color: Color.fromARGB(255, 9, 76, 203)),
                ),
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: grouptile.length,
                itemBuilder: (context, index) {
                  return Groups(
                      title: grouptile[index].title,
                      joined: grouptile[index].joined,
                      pic: grouptile[index].pic,
                      spot: grouptile[index].spot);
                }),
          )
        ],
      ),
    );
  }

//   Widget buildStackedImages() {
//     final double size = 28;
//     final urlImages = groups().pic;

//     final items = urlImages.map((urlImage) => buildImage(urlImage)).toList();

//     return StackedWidget(
//       items: items,
//       size: size,
//     );
//   }

//   // Method for providing image $ shape circle
//   Widget buildImage(String urlImage) {
//     final double borderSize = 0.8;

//     return ClipOval(
//       child: Container(
//         padding: EdgeInsets.all(borderSize),
//         color: Colors.white,
//         child: ClipOval(
//           child: Image.network(
//             urlImage,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class StackedWidget extends StatelessWidget {
//   final List<Widget> items;
//   final TextDirection direction;
//   final double size;
//   final double xShift;

//   const StackedWidget({
//     Key? key,
//     required this.items,
//     this.direction = TextDirection.ltr,
//     this.size = 10,
//     this.xShift = 5,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final allItems = items
//         .asMap()
//         .map((index, item) {
//           final left = size - xShift;

//           final value = Container(
//             width: size,
//             height: size,
//             margin: EdgeInsets.only(left: left * index),
//             child: item,
//           );

//           return MapEntry(index, value);
//         })
//         .values
//         .toList();

//     return Center(
//       child: Stack(
//         children: direction == TextDirection.ltr
//             ? allItems.reversed.toList()
//             : allItems,
//       ),
//     );
//   }
}
