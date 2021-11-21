import 'package:flutter/material.dart';
import 'package:test1_screen/constant/product_data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var data = ["Men's", "Men's Echo", "Men's ELCHIO"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
            'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_170,w_170,f_auto,b_white,q_auto:eco,dpr_1/p9ovcaudfrro2fjb1pyf'),
        backgroundColor: Colors.white30,
        actions: [
          Center(
            child: Icon(Icons.search),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 10,
            right: 20,
            bottom: 25,
          ),
          child: Row(
            children: <Widget>[
              Text(
                "Running",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 220,
              ),
              Text("15 results"),
              SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
            bottom: 25,
          ),
          child: Row(
            children: <Widget>[
              Container(
                width: 220,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/air-zoom-pegasus-38-womens-road-running-shoes-gg8GBK.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1,
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 2,
                      )
                    ]),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      products[0]['name'],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "\$" + products[0]['price'],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Icon(Icons.shopping_bag),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
            bottom: 25,
          ),
          child: Row(
            children: <Widget>[
              Container(
                width: 220,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/photo-1542291026-7eec264c27ff.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1,
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 2,
                      )
                    ]),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      products[1]['name'],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "\$" + products[1]['price'],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Icon(Icons.shopping_bag),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
            bottom: 25,
          ),
          child: Row(
            children: <Widget>[
              Container(
                width: 220,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/zoom-fly-4-womens-road-running-shoes-5VmBLp.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1,
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 2,
                      )
                    ]),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      products[2]['name'],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "\$" + products[2]['price'],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Icon(Icons.shopping_bag),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
















      // body: Row(
      //   children: [
          
      //     Container(

      //       child: Text("Running"),
      //       height: 400,
      //       width: 400,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(1),
      //         gradient: RadialGradient(colors: const [
      //           Colors.black,
      //         ]),
      //       ),
      //     ),
          // body: Column(

          //   children: [

          //     ListView.builder(
          //       itemBuilder: (context, index) {
          //         return abc(data[index], Color(0xff34544));
          //       },
          //       itemCount: data.length,
          //     )
//         ],
//       ),
//     );
//   }
// }

// Widget abc(String name, Color aaa) {
//   return Column(
//     children: [
//       Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(1),
//           gradient: RadialGradient(colors: const [
//             Colors.grey,
//           ]),
//         ),
//       ),
//       Container(
//         decoration: BoxDecoration(),
//         child: Row(
//           children: [],
//         ),
//       ),
//       SizedBox(
//         height: 10,
//       )
//     ],
//   );
// }

//                 child: Column(
//                   children: <Widget>[
//                     Container(
//                       width: 280,
//                       height: 180,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: AssetImage(
//                                   "assets/air-zoom-pegasus-38-womens-road-running-shoes-gg8GBK.jpg"),
//                               fit: BoxFit.cover)),
//                     )
//                   ],