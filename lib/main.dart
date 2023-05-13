import 'package:flutter/material.dart';

import 'style/style.dart';
import 'package:bt3/style/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListPage(),
    );
  }
}

class Product extends StatelessWidget {
  final String name;
  final String image;
  final double price;

  const Product(
      {Key? key, required this.name, required this.image, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
        margin: const EdgeInsets.fromLTRB(14, 14, 14, 0),
        width: screenWidth - 28,
        height: 150,
        decoration: BoxDecoration(
            color: AppColors.secondaryBackground,
            borderRadius: BorderRadius.circular(34),
            boxShadow: [
              BoxShadow(
                  blurRadius: 50,
                  color: const Color(0xFF0B0C2A).withOpacity(.09),
                  offset: const Offset(10, 10))
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Expanded(child: Image.asset(image)),
              ],
            ),
            Column(
              children: [
                const Padding(padding: EdgeInsets.symmetric(vertical: 28)),
                Text(
                  name,
                  style: AppStyle.bodyText2,
                ),
                Text(price.toString(), style: AppStyle.bodyText2),
              ],
            )
          ],
        ));
  }
}

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  TextEditingController? textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Product List',
          style: AppStyle.tiltle,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16, top: 18),
                child: TextButton.icon(
                  style: TextButton.styleFrom(foregroundColor: Colors.black87),
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                  label: const Text(''),
                  key: const Key('cart'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.secondaryBackground,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColors.primaryBackground,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                      child: Icon(
                        Icons.search_rounded,
                        color: Color(0xFF95A1AC),
                        size: 24,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                        child: TextFormField(
                          controller: textController,
                          obscureText: false,
                          decoration: const InputDecoration(
                            labelText: 'Search product here...',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: AppStyle.bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: const BoxDecoration(
                color: AppColors.secondaryBackground,
                border: Border(
                    top: BorderSide(
                        width: 2, color: AppColors.primaryBackground),
                    bottom: BorderSide(
                        width: 2, color: AppColors.primaryBackground)),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      decoration: const BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                width: 2, color: AppColors.primaryBackground)),
                      ),
                      height: MediaQuery.of(context).size.width,
                      child: Text(
                        'Fruit',
                        style: AppStyle.bodyText2,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      decoration: const BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                width: 2, color: AppColors.primaryBackground)),
                      ),
                      height: MediaQuery.of(context).size.width,
                      child: Text(
                        'Vegetables',
                        style: AppStyle.bodyText2,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      decoration: const BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                width: 2, color: AppColors.primaryBackground)),
                      ),
                      height: MediaQuery.of(context).size.width,
                      child: Text(
                        'Food',
                        style: AppStyle.bodyText2,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      decoration: const BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                width: 2, color: AppColors.primaryBackground)),
                      ),
                      height: MediaQuery.of(context).size.width,
                      child: Text(
                        'Drink',
                        style: AppStyle.bodyText2,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      decoration: const BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                width: 2, color: AppColors.primaryBackground)),
                      ),
                      height: MediaQuery.of(context).size.width,
                      child: Text(
                        'Protein',
                        style: AppStyle.bodyText2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Product(
                          name: 'Apple',
                          image: 'asset/image/apple.png',
                          price: 20),
                      Product(
                          name: 'Mango',
                          image: 'asset/image/mango.png',
                          price: 55.5),
                      Product(
                          name: 'Strawberry',
                          image: 'asset/image/strawberry.png',
                          price: 90.0),
                      Product(
                          name: 'Grape',
                          image: 'asset/image/grape.png',
                          price: 30.5),
                      Product(
                          name: 'Watermelon',
                          image: 'asset/image/watermelon.png',
                          price: 43.5),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
