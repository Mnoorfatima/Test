import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                return _bottomSheet(
                  context,
                );
              },
              child: Container(
                height: 40,
                width: 200,
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: const Center(
                  child: Text(
                    'Tap Me',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _bottomSheet(
    BuildContext ctx,
  ) {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(45),
          topRight: Radius.circular(45),
        )),
        builder: (context) {
          return Container(
              width: 400,
              height: MediaQuery.of(ctx).size.height,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: 40,
                            // width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                )
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TabBar(
                              indicator: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              unselectedLabelColor: Colors.grey,
                              tabs: [
                                Text(
                                  'Fish',
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Poppins'),
                                ),
                                Text(
                                  'Food',
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Poppins'),
                                ),
                                Text(
                                  'Rice',
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Poppins'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ListBuilder(context),
                      ],
                    ),
                  ),
                ),
              ));
        });
  }

  // ignore: non_constant_identifier_names
  ListBuilder(BuildContext context) {
    return Container(
      //height: ,
      height: MediaQuery.of(context).size.height - 350,

      child: TabBarView(
        children: [fishTab(), foodTab(), riceTab()],
      ),
    );
  }

  fishTab() {
    return Column(
      children: const [
        SizedBox(
          height: 50,
        ),
        Text(
          'Fish 1',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Fish 2',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Fish 3',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }

  riceTab() {
    return Column(
      children: const [
        SizedBox(
          height: 50,
        ),
        Text(
          'Rice 1',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Rice 2',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Rice 3',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }

  foodTab() {
    return Column(
      children: const [
        SizedBox(
          height: 50,
        ),
        Text(
          'Food 1',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Food 2',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Food 3',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
