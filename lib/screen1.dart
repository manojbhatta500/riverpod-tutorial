import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtut/riverpodstate.dart';

class Screen1 extends ConsumerWidget {
  Screen1({super.key});

  final route = MaterialPageRoute(
    builder: (context) => Screen1(),
  );

  TextEditingController namecontroller = TextEditingController();
  TextEditingController schoolcontroller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    bool shower = ref.watch(boolprovider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'ConsumerWidget',
              style: TextStyle(fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextField(
                  controller: namecontroller,
                  decoration: InputDecoration(hintText: 'name'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextField(
                  controller: schoolcontroller,
                  decoration: InputDecoration(hintText: 'College'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: ElevatedButton(
                  onPressed: () {
                    ref.read(nameprovider.notifier).state =
                        namecontroller.text.toString();
                    ref.read(schoolprovider.notifier).state =
                        schoolcontroller.text.toString();
                  },
                  child: const Center(child: Text('save data '))),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                  'This is the screen1. Save your data here and it will be saved globally through the riverpod. you can fetch these data  in Screen2  for testing.'),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Consumer(builder: (context, ref, child) {
                  return ElevatedButton(
                      onPressed: () {
                        if (shower == false) {
                          print('shower is false rn');
                          print('value of provider: $shower');
                          ref.watch(boolprovider.notifier).state = true;
                        } else {
                          print('shower is true rn');
                          print('value of provider: $shower');
                          ref.watch(boolprovider.notifier).state = false;
                        }
                      },
                      child: Center(
                          child: shower
                              ? Text('close source code')
                              : Text('view source code')));
                })),
            Consumer(builder: (context, ref, child) {
              return Container(
                child: shower
                    ? Container(
                        height: 0.8 * height,
                        width: width,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [showcode()],
                                ),
                              ),
                            ],
                          ),
                        ))
                    : Text(''),
              );
            })
          ],
        ),
      ),
    );
  }
}

Widget showcode() {
  return Text("""   

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtut/riverpodstate.dart';

class Screen1 extends ConsumerWidget {
  Screen1({super.key});

  final route = MaterialPageRoute(
    builder: (context) => Screen1(),
  );

  TextEditingController namecontroller = TextEditingController();
  TextEditingController schoolcontroller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    bool shower = ref.watch(boolprovider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextField(
                  controller: namecontroller,
                  decoration: InputDecoration(hintText: 'name'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextField(
                  controller: schoolcontroller,
                  decoration: InputDecoration(hintText: 'College'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: ElevatedButton(
                  onPressed: () {
                    ref.read(nameprovider.notifier).state =
                        namecontroller.text.toString();
                    ref.read(schoolprovider.notifier).state =
                        schoolcontroller.text.toString();
                  },
                  child: const Center(child: Text('save data '))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                  'this is the screen1.save your data here and it will be saved globally through the riverpod. you can fetch these data  in Screen2  for testing.'),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Consumer(builder: (context, ref, child) {
                  return ElevatedButton(
                      onPressed: () {
                        if (shower == false) {
                          print('shower is false rn');
                          //i can't use dollar sign because of compile time error
                          //the shower is basically dollarsign and sign
                          //without space
                          print('value of provider: shower');
                          
                          ref.watch(boolprovider.notifier).state = true;
                        } else {
                          print('shower is true rn');
                           //i can't use dollar sign because of compile time error
                          //the shower is basically dollarsign and sign
                          //without space
                          print('value of provider:  shower');
                          ref.watch(boolprovider.notifier).state = false;
                        }
                      },
                      child: Center(
                          child: shower
                              ? Text('close source code')
                              : Text('view source code')));
                })),
            Consumer(builder: (context, ref, child) {
              return Container(
                child: shower
                    ? Container(
                        height: 0.8 * height,
                        width: width,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [showcode()],
                                ),
                              ),
                            ],
                          ),
                        ))
                    : Text(''),
              );
            })
          ],
        ),
      ),
    );
  }
}

// my riverpod file is below :


import 'package:flutter_riverpod/flutter_riverpod.dart';

final count = StateProvider((ref) => 0);

//name provider

final nameprovider = StateProvider((ref) => '');

// school provider

final schoolprovider = StateProvider((ref) => '');

// bool value to show the codes

final boolprovider = StateProvider((ref) => false);

  






                  
                """);
}
